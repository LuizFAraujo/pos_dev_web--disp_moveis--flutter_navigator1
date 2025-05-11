import 'package:flutter/material.dart';

/// Conteúdo visual da tela "Dashboard".
/// Exibe cards com dados simulados como estatísticas, pontuação e tarefas.
/// Inclui padding lateral para evitar que os cards fiquem colados na borda da tela.
class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Título do painel
          const Text(
            'Seu Painel',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),

          // Card: Acessos simulados
          const _DashboardCard(
            icon: Icons.bar_chart,
            title: 'Acessos recentes',
            value: '125 visualizações',
            subtitle: 'nos últimos 7 dias',
          ),
          const SizedBox(height: 16),

          // Card: Tarefas concluídas
          const _DashboardCard(
            icon: Icons.task_alt,
            title: 'Tarefas concluídas',
            value: '8 tarefas',
            subtitle: 'esta semana',
          ),
          const SizedBox(height: 16),

          // Card: Pontuação geral
          const _DashboardCard(
            icon: Icons.star_border,
            title: 'Pontuação geral',
            value: '4.5 / 5',
            subtitle: 'baseado em feedbacks',
          ),
        ],
      ),
    );
  }
}

/// Componente privado de card informativo para o dashboard.
/// Exibe ícone, título, subtítulo e valor numérico de destaque.
class _DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String subtitle;

  const _DashboardCard({
    required this.icon,
    required this.title,
    required this.value,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, size: 32, color: Colors.green),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Text(
          value,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
