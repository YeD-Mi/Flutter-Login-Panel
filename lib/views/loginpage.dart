import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:login/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: primaryColor,
          title: Center(child: Text("Neyim Var?"))),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                'assets/images/foto3.jpg',
                height: size.height * .6,
              ),
              SizedBox(height: size.height * 0.005),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.9),
                        blurRadius: 15,
                      )
                    ],
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(children: [
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'E-Posta Adresi'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: isVisible ? true : false,
                      //şifre gizlemek için; obscureText
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              if (isVisible) {
                                setState(() {
                                  isVisible = false;
                                });
                              } else {
                                setState(() {
                                  isVisible = true;
                                });
                              }
                            },
                            child: Icon(Icons.remove_red_eye)),
                        prefixIcon: Icon(Icons.key),
                        hintText: 'Şifre',
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
