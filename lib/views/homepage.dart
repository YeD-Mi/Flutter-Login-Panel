import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:login/views/loginpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple.shade700,
          title: Center(child: Text("Neyim Var?"))),
      body: Padding(
        padding: const EdgeInsets.only(
            right: 15.0, left: 15.0, top: 10.0, bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/foto1.jpg',
              height: size.height * .65,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurple.shade700),
                    onPressed: () {
                      print('Giriş Yap');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
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
          ],
        ),
      ),
    );
  }
}
