import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

/// Tela de login com layout moderno e centralizado.
/// Possui campos fictícios de e-mail e senha, e botões para login e cadastro.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Centro da tela com rolagem para evitar overflow em telas pequenas
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            // Limita a largura para melhor visual em telas grandes
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Ícone superior (cadeado)
                const Icon(Icons.lock, size: 72, color: Colors.blue),
                const SizedBox(height: 16),

                // Título da tela
                const Text(
                  'Seja bem-vindo(a)',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // Campo de entrada para email (sem funcionalidade real)
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

                // Campo de entrada para senha (sem funcionalidade real)
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

                // Botão para realizar login (simulação)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    // Navega para a tela principal ao "logar"
                    Navigator.pushNamed(context, AppRoutes.telaPrincipal);
                  },
                  child: const Text('Entrar'),
                ),

                const SizedBox(height: 24),
                const Divider(height: 32),

                // Botão alternativo para usuários sem cadastro
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    // Navega para a tela de cadastro
                    Navigator.pushNamed(context, AppRoutes.cadastro);
                  },
                  child: const Text('Ainda não tenho cadastro'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
