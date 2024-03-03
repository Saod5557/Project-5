import 'package:floward/bloc/flowaer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import 'nav_bottom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => FlowaerBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: NavBottom()),
    );
  }
}