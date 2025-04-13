import 'package:flutter/material.dart';

class DataSourceListTile {
  Widget? title;
  Widget? subtitle;
  Widget? leading;
  Widget? trailing;
  DataSourceListTile({
    required this.title,
    required this.subtitle,
    required this.leading,
    required this.trailing,
  });

  ListTile toListTile() {
    return ListTile(
      title: title,
      subtitle: subtitle,
      leading: leading,
      trailing: trailing,
    );
  }
}
