import 'package:flutter/material.dart';

/// Botão padronizado para uso como Elevated ou Outlined.
/// [text] define o label, [onPressed] define a ação.
/// [outlined] alterna entre os dois estilos.
class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool outlined;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

    final buttonStyle = ButtonStyle(
      minimumSize: WidgetStateProperty.all(const Size.fromHeight(50)),
      textStyle: WidgetStateProperty.all(style),
    );

    return outlined
        ? OutlinedButton(
          style: buttonStyle,
          onPressed: onPressed,
          child: Text(text),
        )
        : ElevatedButton(
          style: buttonStyle,
          onPressed: onPressed,
          child: Text(text),
        );
  }
}
