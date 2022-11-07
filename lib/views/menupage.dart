import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/color.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Neyim Var Ana Sayfa',
            style: TextStyle(fontFamily: 'Teko', fontSize: 24),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('İlk sayfa.')],
      ),
    );
  }
}
