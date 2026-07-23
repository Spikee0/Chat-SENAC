import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: Scaffold(
       body: Login(

       ),
     ),
   );
 }
}
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        FlutterLogo(size: 18,),
        Text('ChatSENAC'),
        Text("Entre Na sua conta"),
        Text("Coloque o seu email e senha para logar"),
        Text("email"),
        TextField(),
        Text("Senha"),
        TextField(),
        InkWell(child: Text("Esqueceu a senha?")),
        ElevatedButton(onPressed: null, child: Text("Entrar")),
        Text("Ou"),
        ElevatedButton(onPressed: null, child: Text("Continuar com o google")),
        ElevatedButton(onPressed: null, child: Text("Continuar com o faceBook?")),
        Text("não tem uma conta?"),
        InkWell(child: Text("Cadastre-se")),
      ],
    );
  }
}