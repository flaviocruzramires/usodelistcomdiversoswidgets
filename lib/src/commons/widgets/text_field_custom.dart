import 'package:flutter/material.dart';

class TextFieldCustom {
  static TextField getTextField(
    String label,
    Color defaultTextColor,
    double defaultFonteSize,
    IconData? iconDataPrefix,
    String? prefixText,
    IconData? iconDataSufix,
  ) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: defaultTextColor,
          fontSize: defaultFonteSize,
        ),
        suffixIcon:
            iconDataSufix != null
                ? Icon(iconDataSufix, color: defaultTextColor)
                : null,
        prefixIcon:
            iconDataPrefix != null
                ? Icon(iconDataPrefix, color: defaultTextColor)
                : null,
        prefixText: prefixText,
        prefixStyle: TextStyle(
          color: defaultTextColor,
          fontSize: defaultFonteSize,
        ),
      ),
    );
  }
}
