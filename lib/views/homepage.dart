import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade700,
          title: Center(child: Text("Neyim Var?"))),
      body: Padding(
        padding: const EdgeInsets.only(
            right: 25.0, left: 25.0, top: 40.0, bottom: 75.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/foto1.jpg',
              height: 350,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade700),
                onPressed: () {
                  print('Giriş Yap');
                },
                child: Text('Giriş Yap')),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple.shade700),
                onPressed: () {
                  print('Kayıt ol');
                },
                child: Text('Kayıt Ol'))
          ],
        ),
      ),
    );
  }
}
