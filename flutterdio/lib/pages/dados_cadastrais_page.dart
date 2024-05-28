import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DadosCadastraisPage extends StatelessWidget {
  const DadosCadastraisPage(
      {super.key, required this.nome, required this.endereco});

  final String nome;
  final String endereco;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Voltar")),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          children: [
            Container(
              child: Row(
                children: const [
                  Text('Nome', textAlign: TextAlign.left),
                  TextField(
                    decoration: InputDecoration(labelText: 'Enter here'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
