import 'package:flutter/material.dart';
import 'package:primeiro_app/Paginas/EsqueceuSenha.dart';
import 'package:primeiro_app/Paginas/cadastro.dart';
import 'package:primeiro_app/Paginas/dashboard.dart';
import 'package:primeiro_app/Utilitarios/tipografia.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  bool _mostrarSenha = false;

  Future<void> fazerLogin() async {
    var url = Uri.http("10.112.4.154", "/api/login");
    var resposta = await http.post(
      url,
      headers: {"content-type": "application/json"},
      body: jsonEncode({
        'email': emailController.text,
        'senha': senhaController.text,
      }),
    );
    var dados = jsonDecode(resposta.body);

    if (resposta.statusCode != 200) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("${dados["message"]}")));
      return;
    }
    String nomeUsuario = dados["nomeUsuario"];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (builder) => Dashboard(nomeUsuario: nomeUsuario),
      ),
    );
  }

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
                SizedBox(height: 12),
                Row(
                  children: [
                    FlutterLogo(size: 18),
                    Text('ChatSENAC'),
                    SizedBox(height: 36),
                  ],
                ),
                //Titulos
                SizedBox(height: 36),
                Text("Entre na sua conta", style: Tipografia.h1),
                SizedBox(height: 14),
                Text(
                  "Coloque seu email e senha para entrar",
                  style: Tipografia.subtitulo,
                ),
                SizedBox(height: 36),
                Text("Email", style: Tipografia.subtitulo),
                TextField(
                  controller: emailController,
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
                  controller: senhaController,
                  obscureText: !_mostrarSenha,
                  decoration: InputDecoration(
                    hintText: "*******",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _mostrarSenha ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _mostrarSenha = !_mostrarSenha;
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(height: 18),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Esqueceusenha()),
                    );
                  },
                  child: Text(
                    "Esqueceu a senha?",
                    textAlign: TextAlign.right,
                    style: Tipografia.link,
                  ),
                ),
                SizedBox(height: 18),
                ElevatedButton(
                  onPressed: fazerLogin,
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
                SizedBox(height: 12),
                Text("Ou", textAlign: TextAlign.center),
                SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.white70,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Image.asset("assets/imagens/google-icon.png", height: 18),
                      Text("Continuar com o Google?", style: Tipografia.b),
                    ],
                  ),
                ),
                SizedBox(height: 14),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.white70,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Image.asset(
                        "assets/imagens/facebook-icon.png",
                        height: 18,
                      ),
                      Text("Continuar com o Facebook?", style: Tipografia.b),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("não tem uma conta?"),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cadastro()),
                        );
                      },
                      child: Text("  Cadastre-se", style: Tipografia.link),
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
