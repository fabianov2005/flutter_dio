import 'package:flutter/material.dart';

class ListarConsultas extends StatelessWidget {
  const ListarConsultas({super.key, required this.title});
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
