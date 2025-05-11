import 'package:flutter/material.dart';

/// Tela de cadastro com layout moderno, centralizado e campos fictícios.
/// Permite retornar ao login após simular o preenchimento dos dados.
class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Layout centralizado com rolagem para telas pequenas
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            // Limita a largura para melhor visualização em telas grandes
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Ícone representando criação de conta
                const Icon(Icons.person_add, size: 72, color: Colors.green),
                const SizedBox(height: 16),

                // Título da tela
                const Text(
                  'Crie sua conta',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Campo para Nome (sem funcionalidade real)
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Campo para Email (sem funcionalidade real)
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Campo para Senha (sem funcionalidade real)
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // Botão para simular cadastro e retornar ao login
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    // Volta para a tela de login
                    Navigator.pop(context);
                  },
                  child: const Text('Cadastrar e voltar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
