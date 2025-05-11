import 'package:flutter/material.dart';

/// Cabeçalho visual para telas de autenticação.
/// Exibe um ícone grande e um título centralizado.
/// Ícone e texto são parametrizáveis.
class AuthHeader extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const AuthHeader({
    super.key,
    required this.icon,
    required this.title,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 72, color: color),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
