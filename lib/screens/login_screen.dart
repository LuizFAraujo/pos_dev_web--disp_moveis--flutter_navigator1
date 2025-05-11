import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import '../widgets/auth_form_container.dart';
import '../widgets/auth_header.dart';

/// Tela de login utilizando componentes reutilizáveis.
/// Layout responsivo, centralizado e consistente com a tela de cadastro.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthFormContainer(
      children: [
        // Cabeçalho com ícone de cadeado e título amigável
        const AuthHeader(
          icon: Icons.lock,
          title: 'Seja bem-vindo(a)',
          color: Colors.blue,
        ),
        const SizedBox(height: 32),

        // Campo de email
        const AppTextField(label: 'Email'),
        const SizedBox(height: 16),

        // Campo de senha
        const AppTextField(label: 'Senha', obscureText: true),
        const SizedBox(height: 32),

        // Botão principal para login
        AppButton(
          text: 'Entrar',
          onPressed: () {
            // Navega para a tela principal (BaseScreen)
            Navigator.pushNamed(context, AppRoutes.telaPrincipal);
          },
        ),
        const SizedBox(height: 24),
        const Divider(height: 32),

        // Botão alternativo para ir para cadastro
        AppButton(
          text: 'Ainda não tenho cadastro',
          outlined: true,
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.cadastro);
          },
        ),
      ],
    );
  }
}
