import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TermoUsoPrivacidadePage extends StatelessWidget {
  const TermoUsoPrivacidadePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Voltar"),
      ),
      body: Center(child: Text("Termo de Uso e Privacidade")),
    );
  }
}
