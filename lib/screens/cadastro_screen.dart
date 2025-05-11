import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import '../widgets/auth_form_container.dart';
import '../widgets/auth_header.dart';

/// Tela de cadastro utilizando a mesma base visual da tela de login.
/// Usa widgets reutilizáveis para garantir consistência e clean code.
class CadastroScreen extends StatelessWidget {
  const CadastroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFormContainer(
      children: [
        // Cabeçalho com ícone de adicionar usuário e título "Crie sua conta"
        const AuthHeader(
          icon: Icons.person_add,
          title: 'Crie sua conta',
          color: Colors.green,
        ),
        const SizedBox(height: 32),

        // Campo Nome
        const AppTextField(label: 'Nome'),
        const SizedBox(height: 16),

        // Campo Email
        const AppTextField(label: 'Email'),
        const SizedBox(height: 16),

        // Campo Senha
        const AppTextField(label: 'Senha', obscureText: true),
        const SizedBox(height: 32),

        // Botão de cadastro que retorna à tela de login
        AppButton(
          text: 'Cadastrar e voltar',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
