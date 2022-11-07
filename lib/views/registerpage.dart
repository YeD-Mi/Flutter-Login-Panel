import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/color.dart';
import 'package:login/views/loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController password2Controller = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  bool isVisible = true; //şifre görüntüleme için.
  bool woman = false;
  bool man = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Center(
              child: Text(
            'Neyim Var üyelik Paneli',
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: 'Teko',
            ),
          ))),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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
                    Center(
                      child: Text(
                        'Neyim Var uygulaması ile hem hastalığın hakkında bilgi edinebilir hem de bu doğrultuda yemek ve yaşam tavsiyeleri alırsın.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Caveat', fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    TextField(
                      controller: nameController,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_add),
                        hintText: 'Ad Soyad',
                      ),
                    ),
                    TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(4)
                        ],
                        controller: ageController,
                        cursorColor: primaryColor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.baby_changing_station_sharp),
                          hintText: 'Doğum Yılı',
                        )),
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: primaryColor,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'E-Posta Adresi'),
                    ),
                    TextField(
                      controller: passwordController,
                      cursorColor: primaryColor,
                      obscureText: isVisible ? true : false,
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
                    TextField(
                      controller: password2Controller,
                      obscureText: isVisible ? true : false,
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
                        hintText: 'Şifre Tekrarı',
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CheckboxListTile(
                              title: Text('Kadın'),
                              value: woman,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value) {
                                setState(() {
                                  woman = value!;
                                  man = false;
                                });
                              }),
                        ),
                        Expanded(
                          child: CheckboxListTile(
                              title: Text('Erkek'),
                              value: man,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? value) {
                                setState(() {
                                  man = value!;
                                  woman = false;
                                });
                              }),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: size.height * 0.005,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Kayıt Ol',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Teko',
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
