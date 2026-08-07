import 'package:flutter/material.dart';
import 'package:primeiro_app/Paginas/cadastro.dart';
import 'package:primeiro_app/Paginas/dashboard.dart';
import 'package:primeiro_app/Utilitarios/tipografia.dart';
import '../main.dart';
import 'package:primeiro_app/Paginas/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class Esqueceusenha extends StatelessWidget {
  const Esqueceusenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsGeometry.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 18, ),

                SizedBox(height: 200,),
              Text(
              "Enviamos um codigo pelo email",
              style: Tipografia.h1,
            ),
            SizedBox(height: 36),
            Text("Email", style: Tipografia.subtitulo),
            TextField(
              decoration: InputDecoration(
                hint: Text("Usuario@gmail.com"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 18),
            Text("Código", style: Tipografia.subtitulo),
            TextField(
              maxLength: 6,
              decoration: InputDecoration(
                hintText: "*******",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
