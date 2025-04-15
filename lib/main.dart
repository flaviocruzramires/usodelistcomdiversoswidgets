import 'package:flutter/material.dart';
import 'package:sliverexemple/src/views/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uso de listas',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home:
          FirstPage(), // const SliverPageExample(title: 'Sliver Sticky collapsable Panel'),
    );
  }
}
