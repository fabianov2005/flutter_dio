import 'package:flutter/material.dart';
import 'package:flutterdio/pages/configuracoes_page.dart';
import 'package:flutterdio/pages/dados_cadastrais_page.dart';
import 'package:flutterdio/pages/termo_uso_privacidade_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text(
                      "Dados Cadastrais",
                      style:
                          TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DadosCadastraisPage(
                          endereco: "Djalma Dutra 465",
                          nome: "Fabiano Augusto",
                        ),
                      ),
                    );
                  },
                ),
                const Divider(),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text(
                      "Termos de Uso e Privacidade ",
                      style:
                          TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TermoUsoPrivacidadePage(),
                      ),
                    );
                  },
                ),
                const Divider(),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text(
                      "Configurações",
                      style:
                          TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConfiguracoesPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
