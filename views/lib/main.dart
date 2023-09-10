import 'package:flutter/material.dart';
import 'package:views/login.dart';

//inicia aplicação
void main() {
  runApp(const MyApp()); //cria e executa instância
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //define titulo e home
      title: 'Login',
      home: Login(),
    );
  }
}
