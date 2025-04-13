import 'package:flutter/material.dart';

final Color paletaCor = Colors.blueGrey;
final Color defaultTextColor = Colors.white;
final Color defaultTextColorBlack = Colors.black;
final Color paletaCorRgb = Color.fromARGB(255, 96, 125, 139);

final double defaultFonteSize = 12;
final double MediumFonteSize = 16;
final double LargeFonteSize = 18;
final double defaultPadding = 8.0;

final double defaultIconSize = 30.0;
final double defaultIconSizeSmall = 20.0;

final List<Widget> emptyList = <Widget>[];

final List<Widget> iconsUpdateAndDelete = [
  IconButton(
    icon: Icon(Icons.edit, color: defaultTextColor),
    onPressed: () {
      // Lógica para editar a empresa
      print('Editar: ');
    },
  ),
  IconButton(
    icon: Icon(Icons.delete, color: defaultTextColor),
    onPressed: () {
      // Lógica para apagar a empresa
      print('Apagar: ');
    },
  ),
]; //List<Widget>
