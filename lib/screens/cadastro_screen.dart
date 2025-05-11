import 'package:flutter/material.dart';

class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Preencha seus dados para se cadastrar',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 24),

              // Campo fictício de nome (apenas visual)
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              // Campo fictício de email
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 32),

              // Botão para simular cadastro e retornar ao login
              ElevatedButton(
                onPressed: () {
                  // Retorna para a tela de login removendo a tela atual da pilha
                  Navigator.pop(context);
                },
                child: const Text('Cadastrar e voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
