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

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(height: 36),
                Text("Cadastre-se", style: Tipografia.h1),
                SizedBox(height: 18),
                Text(
                  "Crie uma conta para continuar!",
                  style: Tipografia.subtitulo,
                ),
                SizedBox(height: 36),
                Text("Usuario", style: Tipografia.subtitulo),
                TextField(
                  decoration: InputDecoration(
                    hint: Text("Usuario@gmail.com"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 18),
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
                Text("Senha", style: Tipografia.subtitulo),
                TextField(
                  decoration: InputDecoration(
                    hint: Text("*******"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 18),
                Text("Confirmar Senha", style: Tipografia.subtitulo),
                TextField(
                  decoration: InputDecoration(
                    hint: Text("*******"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(50, 110, 250, 10),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  child: Text("Entrar"),
                ),
                SizedBox(height: 36),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Já tem uma conta?"),
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text("  Login", style: Tipografia.link),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
