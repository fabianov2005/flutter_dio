import 'package:flutter/material.dart';
import 'package:flutterdio/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  late bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Image.network(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                          height: 100,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Já tem cadastro?",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  const Text(
                    "Faça o seu login e make the change!_",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 35,
                    width: double.infinity,
                    child: TextField(
                      controller: emailController,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: EdgeInsets.only(top: 4),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 35,
                    width: double.infinity,
                    child: TextField(
                      controller: passwordController,
                      obscureText: passwordVisible,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        contentPadding: const EdgeInsets.only(top: 5),
                        hintText: "Password",
                        hintStyle: const TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Colors.purple,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              if (passwordVisible) {
                                passwordVisible = false;
                              } else {
                                passwordVisible = true;
                              }
                            });
                          },
                          child: Icon(passwordVisible
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          if (emailController.text == "a" &&
                              passwordController.text == "a") {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MainPage(),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    "Falha no Login. Email ou Password invalidos. Tente novamente."),
                              ),
                            );
                            // showAlertDialog(context);
                          }
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                        ),
                        child: const Text(
                          "ENTRAR",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 35,
                    width: double.infinity,
                    child: const Text(
                      "Esqueci minha senha",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 35,
                    width: double.infinity,
                    child: const Text(
                      "Criar conta",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        });

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Falha no Login."),
      content: const Text("Email ou Password invalidos. Tente novamente."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
