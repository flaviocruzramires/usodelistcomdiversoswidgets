import 'package:flutter/material.dart';
import 'package:sliverexemple/src/commons/constants/constantes.dart';
import 'package:sliverexemple/src/commons/widgets/app_bar_custom.dart';
import 'package:sliverexemple/src/views/atividade_viewer.dart';
import 'package:sliverexemple/src/views/data_table_example.dart';
import 'package:sliverexemple/src/views/sliver_page_example.dart.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom.getAppBar(title: 'Exemplo de uso de listas'),
      backgroundColor: paletaCor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(16.0),
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => SliverPageExample(
                          title: 'Sliver Sticky collapsable Panel',
                        ),
                  ),
                );
              },
              child: const Text('Sliver Example'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(16.0),
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataTableExample()),
                );
              },
              child: const Text('Data Table Example'),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(16.0),
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AtividadeViewer(),
                  ),
                );
              },
              child: const Text('Atividade Viewer'),
            ),
          ],
        ),
      ),
    );
  }
}
