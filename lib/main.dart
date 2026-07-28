import 'package:flutter/material.dart';
import 'package:primeiro_app/Utilitarios/tipografia.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: Padding(padding: EdgeInsets.all(24), child: Login(),)),
      ),
    );
  }
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
        SizedBox(height: 14,),
        Text(
          "Coloque se email e senha para logar",
          style: Tipografia.subtitulo,
        ),
        SizedBox(height: 36,),
        Text("Email", style: Tipografia.subtitulo),
        TextField(decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),)
        ),),
        SizedBox(height: 18,),
        Text("Senha", style: Tipografia.subtitulo),
        TextField(decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
        ),),
        SizedBox(height: 18,),
        InkWell(child: Text("Esqueceu a senha?", textAlign: TextAlign.right)),
        SizedBox(height: 18,),
        ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent
        ), child: Text("Entrar")),
        SizedBox(height: 12,),
        Text("Ou",textAlign: TextAlign.center),
        SizedBox(height: 12,),
        ElevatedButton(onPressed: () {}, child: Text("Continuar com o google")),
        SizedBox(height: 8,),
        ElevatedButton(
          onPressed: () {},
          child: Text("Continuar com o faceBook?"),
        ),
        SizedBox(height: 60),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("não tem uma conta?"),
            InkWell(child: Text(" Cadastre-se")),
          ],
        ),
      ],
    );
  }
}
