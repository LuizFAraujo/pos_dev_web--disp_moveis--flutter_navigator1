import 'package:flutter/material.dart';

import '../routes/app_routes.dart';
import '../views/dashboard_content.dart';
import '../views/home_content.dart';
import '../views/sobre_content.dart';

/// Widget base com Scaffold e BottomNavigationBar.
/// Permite trocar entre Home, Dashboard e Sobre.
/// Também inclui opção de Sair que volta para o Login.
class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  // Lista de conteúdos que serão exibidos conforme o índice
  static final List<Widget> _pages = [
    const HomeContent(),
    const DashboardContent(),
    const SobreContent(),
  ];

  void _onItemTapped(int index) {
    if (index == 3) {
      // "Sair" → volta ao login limpando a pilha
      Navigator.pushNamedAndRemoveUntil(
        context,
        AppRoutes.login,
        (route) => false,
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Sobre',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Sair'),
        ],
      ),
    );
  }
}
