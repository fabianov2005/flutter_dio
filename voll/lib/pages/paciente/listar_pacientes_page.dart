import 'package:flutter/material.dart';

class ListarPacientes extends StatelessWidget {
  const ListarPacientes({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(),
    ));
  }
}
