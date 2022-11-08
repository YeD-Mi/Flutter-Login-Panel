import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/color.dart';
import 'package:login/views/historypage.dart';
import 'package:login/views/profilpage.dart';
import 'package:login/views/resultpage.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectecIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectecIndex = index;
      print('index:$_selectecIndex');
    });
  }

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
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Geçmiş'),
          ],
          currentIndex: _selectecIndex,
          selectedItemColor: primaryColor,
          onTap: _onItemTapped,
        ),
        body: _selectecIndex == 0 //Değer 0 ise ResultPage açılır.
            ? ResultPage()
            : _selectecIndex ==
                    1 //Değer 0 değilse 1 mi olduğuna bakılır. 1 ise profil değilse history sayfası açılır.
                ? ProfilPage()
                : HistoryPage());
  }
}
