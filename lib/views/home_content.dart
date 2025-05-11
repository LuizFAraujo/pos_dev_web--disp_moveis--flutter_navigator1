import 'package:flutter/material.dart';

/// Conteúdo visual da tela "Home".
/// Exibe saudação simples, mensagem de boas-vindas e um card decorativo informativo.
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Ícone decorativo
        const Icon(Icons.home_rounded, size: 72, color: Colors.blue),
        const SizedBox(height: 16),

        // Saudação neutra
        const Text(
          'Olá, usuário!',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),

        // Mensagem acolhedora
        Text(
          'Tudo pronto para começar!',
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
        ),
        const SizedBox(height: 32),

        // Card decorativo informativo (não clicável)
        Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dica do dia',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Use o menu abaixo para navegar entre Dashboard e Sobre.',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
