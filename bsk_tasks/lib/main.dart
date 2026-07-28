import 'package:bsk_tasks/stateful_widgets_trial/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bsk_tasks/stateful_widgets_trial/shop_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CartBloc(),
        child: ShopScreen(),
      )
    );
  }
}