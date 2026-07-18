import 'package:flutter/material.dart';
import 'package:bsk_tasks/widgets_testing/product_card.dart';
import 'package:bsk_tasks/database_sim/product.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.orange),
          title: Text('Shop'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontStyle: FontStyle.italic,
            backgroundColor: Colors.orange,
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        body: ListView(children: [ProductCard()]),
      ),
    );
  }
}
