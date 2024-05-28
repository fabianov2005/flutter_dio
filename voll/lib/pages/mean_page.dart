import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'consulta/listar_consultas_page.dart';
import 'medico/listar_medicos_page.dart';
import 'paciente/listar_pacientes_page.dart';

class MeanHome extends StatefulWidget {
  const MeanHome({super.key, required this.title});
  final String title;

  @override
  State<MeanHome> createState() => _MeanHome();
}

class _MeanHome extends State<MeanHome> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.fromLTRB(25, 15, 8, 8),
                child: const Image(
                    image: AssetImage('assets/logo_voll.png'), width: 160),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                  child: const Text('Gerenciando sua Clínica'),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 60, 8, 8),
              child: const Text('Escolha qual seção deseja iniciar:'),
            ),
            Container(
              margin: (const EdgeInsets.only(top: 10, left: 25, right: 25)),
              height: 100,
              width: 500,
              decoration: BoxDecoration(color: Colors.blue[400]),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListarMedicos(title: widget.title)),
                  );
                },
                icon: const Icon(Icons.medical_services,
                    color: Colors.white, size: 50),
                label: Container(
                  width: 100, // change width as you need
                  height: 70, // change height as you need
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Médicos",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white),
                      maxLines: 2, // change max line you need
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(10.0, 8.0, 20.0, 8.0),
                  backgroundColor: Color.fromARGB(255, 12, 125, 238),
                ),
              ),
            ),
            Container(
              margin: (const EdgeInsets.only(top: 10, left: 25, right: 25)),
              height: 100,
              width: 500,
              decoration: BoxDecoration(color: Colors.blue[400]),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListarPacientes(title: widget.title)),
                  );
                },
                icon: const Icon(Icons.person, color: Colors.white, size: 50),
                label: Container(
                  width: 100, // change width as you need
                  height: 70, // change height as you need
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Pacientes",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white),
                      maxLines: 2, // change max line you need
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(10.0, 8.0, 20.0, 8.0),
                  backgroundColor: Color.fromARGB(255, 12, 125, 238),
                ),
              ),
            ),
            Container(
              margin: (const EdgeInsets.only(top: 10, left: 25, right: 25)),
              height: 100,
              width: 500,
              decoration: BoxDecoration(color: Colors.blue[400]),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ListarConsultas(title: widget.title)),
                  );
                },
                icon: const Icon(Icons.calendar_month,
                    color: Colors.white, size: 50),
                label: Container(
                  width: 100, // change width as you need
                  height: 70, // change height as you need
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Consultas",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white),
                      maxLines: 2, // change max line you need
                    ),
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(10.0, 8.0, 20.0, 8.0),
                  backgroundColor: Color.fromARGB(255, 12, 125, 238),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
