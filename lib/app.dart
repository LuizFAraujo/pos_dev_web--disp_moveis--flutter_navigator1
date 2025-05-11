import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'screens/cadastro_screen.dart';
import 'screens/login_screen.dart';
import 'widgets/base_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NaviApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (_) => const LoginScreen(),
        AppRoutes.cadastro: (_) => const CadastroScreen(),
        AppRoutes.telaPrincipal:
            (_) => const BaseScreen(), // Substitui TelaPrincipal antiga
      },
    );
  }
}
