import 'package:flutter/material.dart';
import 'package:primeiro_app/Utilitarios/tipografia.dart';
import 'Paginas/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(padding: EdgeInsets.all(24), child: Login()),
        ),
      ),
    );
  }
}


