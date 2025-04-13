import 'package:flutter/material.dart';
import 'package:infinite_grouped_list/infinite_grouped_list.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/enumerators/enumerators.dart';
import 'package:sliverexemple/src/commons/functions/functions.dart';
import 'package:sliverexemple/src/commons/models/data_source_list_tile.dart';
import 'package:sliverexemple/src/commons/widgets/app_bar_custom.dart';
import 'package:sliverexemple/src/commons/widgets/text_custom.dart';
import 'package:sliverexemple/src/views/home_page.dart';
import 'package:sliverexemple/src/models/transaction.dart';

class SliverPageExample extends StatefulWidget {
  const SliverPageExample({super.key, required this.title});

  final String title;

  @override
  State<SliverPageExample> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SliverPageExample> {
  bool dontThrowError = false;

  DateTime baseDate = DateTime.now();

  var index = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paletaCor.withOpacity(0.1),
      appBar: AppBarCustom.getAppBar(title: widget.title),
      // AppBar(
      //   elevation: 3,
      //   titleSpacing: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.menu, color: Colors.white, size: 30),
      //     onPressed: () {
      //       // Navigator.pop(context);
      //     },
      //   ),
      //   centerTitle: true,
      //   backgroundColor: paletaCor,
      //   title: Text(
      //     widget.title,
      //     style: const TextStyle(
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //       color: Colors.white,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.search_rounded, color: Colors.white),
      //       onPressed: () {
      //         setState(() {
      //           dontThrowError = !dontThrowError;
      //           index = 0;
      //           baseDate = DateTime.now();
      //         });
      //       },
      //     ),
      //   ],
      // ),
      body: InfiniteGroupedList<Transaction, DateTime, String>(
        groupBy: (item) => item.dateTime,
        sortGroupBy: (item) => item.dateTime,
        groupTitleBuilder: (title, groupBy, isExpanded, scrollPercentage) {
          return obterGroupTitle(title, isExpanded, scrollPercentage, index);
        },
        itemBuilder: (item) {
          return obterItemDetail(item);
        },
        onLoadMore: (info) => onLoadMoreTransaction(info.offset, baseDate),
        groupCreator: (dateTime) {
          return obterTextoGrupo(dateTime);
        },
      ),
    );
  }
}

Widget obterGroupTitle(
  String title,
  bool isExpanded,
  double scrollPercentage,
  int index,
) {
  return Container(
    width: double.infinity,
    height: 50,
    color: paletaCor.withOpacity(0.8),
    child: Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 16),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        if (index % 2 == 0)
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 16),
              child: AnimatedRotation(
                duration: const Duration(milliseconds: 0),
                turns: isExpanded ? 0 : 0.5,
                child: InkWell(
                  child: const Icon(
                    Icons.expand_more,
                    color: Colors.white,
                    size: 30,
                  ),
                  onTap: () {
                    // Handle tap event here
                    HomePage();
                  },
                ),
              ),
            ),
          ),
      ],
    ),
  );
}

Widget obterItemDetail(Transaction item) {
  DataSourceListTile? dados = DataSourceListTile(
    title:
        TextCustom(
          item.name,
          defaultFonteSize,
          FontWeight.normal,
          defaultTextColor,
        ).getText(),
    subtitle:
        TextCustom(
          item.dateTime.toIso8601String(),
          defaultFonteSize,
          FontWeight.normal,
          defaultTextColor,
        ).getText(),
    leading: obterIcon(item),
    trailing:
        TextCustom(
          '${item.amount.toStringAsFixed(2)}€',
          defaultFonteSize,
          FontWeight.normal,
          defaultTextColor,
        ).getText(),
  );

  return SizedBox(
    height: 100,
    child: Container(
      decoration: BoxDecoration(
        color: paletaCor.withOpacity(0.1),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey[600]!,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: dados.toListTile(),

      // ignore: dead_code
    ),
  );
}

String obterTextoGrupo(DateTime dateTime) {
  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final yesterday = today.subtract(const Duration(days: 1));
  final lastWeek = today.subtract(const Duration(days: 7));
  final lastMonth = DateTime(today.year, today.month - 1, today.day);

  final String? retorno;

  if (today.day == dateTime.day &&
      today.month == dateTime.month &&
      today.year == dateTime.year) {
    retorno = 'Today';
  } else if (yesterday.day == dateTime.day &&
      yesterday.month == dateTime.month &&
      yesterday.year == dateTime.year) {
    retorno = 'Yesterday';
  } else if (lastWeek.isBefore(dateTime) && dateTime.isBefore(yesterday)) {
    retorno = 'Last Week';
  } else if (lastMonth.isBefore(dateTime) && dateTime.isBefore(lastWeek)) {
    retorno = 'Last Month';
  } else {
    // Convert the DateTime to a string for grouping
    retorno = '${dateTime.year}-${dateTime.month}-${dateTime.day}';
  }
  return retorno;
}

Icon aplicarEstilo(Icon icon) {
  return Icon(icon.icon, color: Colors.white60, size: 30);
}

Icon obterIcon(Transaction item) {
  Icon? icone;
  item.type == TransactionType.transport
      ? icone = const Icon(Icons.directions_bus)
      : item.type == TransactionType.food
      ? icone = const Icon(Icons.fastfood)
      : item.type == TransactionType.shopping
      ? icone = const Icon(Icons.shopping_bag)
      : item.type == TransactionType.entertainment
      ? icone = const Icon(Icons.movie)
      : item.type == TransactionType.health
      ? icone = const Icon(Icons.medical_services)
      : icone = const Icon(Icons.money);

  return aplicarEstilo(icone);
}
