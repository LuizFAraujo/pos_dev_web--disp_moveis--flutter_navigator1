import 'package:flutter/material.dart';

/// Campo de texto reutilizável com estilo padronizado.
/// Recebe [label], [obscureText] e demais parâmetros opcionais.
class AppTextField extends StatelessWidget {
  final String label;
  final bool obscureText;

  const AppTextField({
    super.key,
    required this.label,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
