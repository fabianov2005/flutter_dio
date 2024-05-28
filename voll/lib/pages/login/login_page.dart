import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adicione sua imagem de logotipo aqui
            Image.asset('assets/logo.png', height: 100),
            const SizedBox(height: 16.0),
            // Adicione seu campo de entrada de usuário
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nome de Usuário',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 16.0),
            // Adicione seu campo de entrada de senha
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Senha',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(height: 32.0),
            // Adicione seu botão de login
            ElevatedButton(
              onPressed: () {
                // Adicione lógica de login aqui
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            // Adicione um link para redefinição de senha ou registro
            TextButton(
              onPressed: () {
                // Adicione a lógica para redefinição de senha ou navegação para a tela de registro
              },
              child: const Text('Esqueceu a senha?'),
            ),
          ],
        ),
      ),
    );
  }
}
