import 'package:bsk_tasks/bloc/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bsk_tasks/screens/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bsk_tasks/bloc/favorites/favorites_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavoritesBloc()),
        BlocProvider(create: (context) => CartBloc()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MainScreen()),
    );
  }
}
