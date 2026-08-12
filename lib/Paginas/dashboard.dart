import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  final String nomeUsuario;

  const Dashboard({
    super.key,
    required this.nomeUsuario,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  final nomeController = TextEditingController();

  Future<void> fazerdashboard() async {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Oi ${widget.nomeUsuario}😊"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Column(
              children: [
                Row(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}