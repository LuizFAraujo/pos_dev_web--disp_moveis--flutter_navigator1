import 'package:flutter/material.dart';

class SobreContent extends StatelessWidget {
  const SobreContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(Icons.info_outline, size: 64, color: Colors.deepOrange),
        SizedBox(height: 24),
        Text(
          'Este é um exemplo de app Flutter\nusando Navigator com estrutura limpa.',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
