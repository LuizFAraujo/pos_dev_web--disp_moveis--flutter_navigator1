import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class TelaPrincipalScreen extends StatelessWidget {
  const TelaPrincipalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela Principal'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Escolha uma opção:', style: TextStyle(fontSize: 18)),
              const SizedBox(height: 32),

              // Botão para navegar ao Dashboard
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.dashboard);
                },
                child: const Text('Ir para Dashboard'),
              ),
              const SizedBox(height: 16),

              // Botão para navegar à tela Sobre
              OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.sobre);
                },
                child: const Text('Sobre'),
              ),
              const SizedBox(height: 32),

              // Botão para sair e voltar ao login limpando a pilha
              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.login,
                    (route) => false,
                  );
                },
                child: const Text('Sair'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
