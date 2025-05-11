// lib/app.dart

import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'screens/cadastro_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sobre_screen.dart';
import 'screens/tela_principal_screen.dart';

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
        AppRoutes.cadastro: (_) => const CadastroScreen(),
        AppRoutes.telaPrincipal: (_) => const TelaPrincipalScreen(),
        AppRoutes.dashboard: (_) => const DashboardScreen(),
        AppRoutes.sobre: (_) => const SobreScreen(),
      },
    );
  }
}
