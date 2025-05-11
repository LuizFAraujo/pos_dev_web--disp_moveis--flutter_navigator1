import 'package:flutter/material.dart';

/// Conteúdo visual da tela "Sobre".
/// Exibe informações do app, versão e ícone decorativo.
/// Estilo limpo e centralizado, com padding lateral para boa leitura.
class SobreContent extends StatelessWidget {
  const SobreContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Ícone decorativo
          const Icon(Icons.info_outline, size: 64, color: Colors.orange),
          const SizedBox(height: 16),

          // Título
          const Text(
            'Sobre o NaviApp',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),

          // Texto descritivo do propósito do app
          Text(
            'Este aplicativo foi desenvolvido como parte de um projeto de estudos '
            'para demonstrar o funcionamento do Navigator no Flutter.\n\n'
            'A navegação entre telas, controle de pilha e uso de rotas nomeadas '
            'são ilustrados de forma modular e limpa.',
            style: TextStyle(fontSize: 15, color: Colors.grey[800]),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 24),

          // Versão do app
          Text(
            'Versão 1.0.0',
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
