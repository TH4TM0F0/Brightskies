import 'package:flutter/material.dart';

class AppBarWidget {
   static AppBar appBar = AppBar(
    leading: Icon(Icons.menu, color: Colors.white),
    title: Text('Not Jumia'),
    centerTitle: true,
    backgroundColor: Colors.orange,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 28,
      fontStyle: FontStyle.italic,
    ),
  );
}