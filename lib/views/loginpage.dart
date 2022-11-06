import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade700,
          title: Center(child: Text("Neyim Var?"))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepPurple.shade700),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: emailController,
                        cursorColor: Colors.deepPurple.shade700,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            hintText: 'E-Posta Adresi'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: passwordController,
                        cursorColor: Colors.deepPurple.shade700,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.key),
                          hintText: 'Şifre',
                        ),
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Giriş Yap'))
          ],
        ),
      ),
    );
  }
}
