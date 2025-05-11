import 'package:flutter/material.dart';

/// Widget reutilizável que encapsula o layout base de um formulário de autenticação.
/// Inclui centralização, rolagem, padding e largura máxima.
/// Os widgets filhos são passados como [children].
class AuthFormContainer extends StatelessWidget {
  final List<Widget> children;

  const AuthFormContainer({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
