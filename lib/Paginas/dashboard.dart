import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app/Paginas/login.dart';
import 'package:primeiro_app/Utilitarios/tipografia.dart';
import '../main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ChatSenac"),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsGeometry.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                ]
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
