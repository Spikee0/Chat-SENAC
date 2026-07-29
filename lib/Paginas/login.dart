import 'package:flutter/material.dart';
import 'package:primeiro_app/Utilitarios/tipografia.dart';

import '../main.dart';

void main() {
  runApp(MyApp());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
          "Coloque se email e senha para logar",
          style: Tipografia.subtitulo,
        ),
        SizedBox(height: 36),
        Text("Email", style: Tipografia.subtitulo),
        TextField(
          decoration: InputDecoration(
            hint: Text("Usuario@gmail.com"),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
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
            borderSide: BorderSide(style: Tipografia.link)),
            suffixIcon: Icon(Icons.visibility_off),
          ),
          obscureText: true,
        ),
        SizedBox(height: 18),
        InkWell(onTap:() {}, child: Text("Esqueceu a senha?", textAlign: TextAlign.right, style: Tipografia.link)),
        SizedBox(height: 18),
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
              Image.asset("assets/imagens/google-icon.png", height: 18,),
              Text(
                "Continuar com o Google?",
                style: Tipografia.b,
              ),
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
              Image.asset("assets/imagens/facebook-icon.png", height: 18,),
              Text(
                "Continuar com o Facebook?",
                style: Tipografia.b,
              ),
            ],
          ),
        ),
        SizedBox(height: 60),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("não tem uma conta?"),
            InkWell(onTap:() {}, child: Text("  Cadastre-se", style: Tipografia.link),
            )],
        ),
      ],
    );
  }
}