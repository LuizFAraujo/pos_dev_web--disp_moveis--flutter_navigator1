// Tela de Login com pergunta "Tem cadastro?" e navegação para Cadastro ou Tela Principal.

import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Você já tem cadastro?',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),

              // Botão para quem já tem cadastro: vai para a tela principal
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.telaPrincipal);
                },
                child: const Text('Sim, fazer login'),
              ),
              const SizedBox(height: 16),

              // Botão para quem não tem cadastro: vai para a tela de cadastro
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.cadastro);
                },
                child: const Text('Não, quero me cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
