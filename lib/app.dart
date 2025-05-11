// lib/app.dart

import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'screens/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigator Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (_) => const LoginScreen(),

        AppRoutes.cadastro: (_) => const PlaceholderScreen(title: 'Cadastro'),
        AppRoutes.telaPrincipal:
            (_) => const PlaceholderScreen(title: 'Tela Principal'),
        AppRoutes.dashboard: (_) => const PlaceholderScreen(title: 'Dashboard'),
        AppRoutes.sobre: (_) => const PlaceholderScreen(title: 'Sobre'),
      },
    );
  }
}

/// Tela temporária que exibe apenas o título.
/// Utilizada para não quebrar o projeto antes das telas reais existirem.
class PlaceholderScreen extends StatelessWidget {
  final String title;

  const PlaceholderScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('Tela: $title')),
    );
  }
}
