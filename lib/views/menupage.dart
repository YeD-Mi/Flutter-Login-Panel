import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/color.dart';
import 'package:login/views/historypage.dart';
import 'package:login/views/homepage.dart';
import 'package:login/views/profilpage.dart';
import 'package:login/views/resultpage.dart';
import 'package:login/views/settingspage.dart';

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
        drawer: Drawer(
            child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/mryed.jpg'),
              ),
              accountName: Text(
                'Hoşgeldin; MrYed',
                style: (TextStyle(fontSize: 15)),
              ),
              accountEmail: Text('bilgi@mryed.com'),
            ),
            ListTile(
              title: Text('Bilgi',
                  style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
              leading: Icon(Icons.info_rounded),
              iconColor: primaryColor,
              subtitle: Text(
                  'Bilgiler kullanıcıların girmiş olduğu veriler ışığında listelenmektedir. Sağlığınız hakkkında doğru ve kesin bilgiyi doktorunuzdan alabileceğinizi unutmayın.',
                  style: TextStyle(fontSize: 18, fontFamily: 'Caveat')),
            ),
            Divider(),
            ListTile(
              title: Text('Gizlilik',
                  style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
              leading: Icon(Icons.hide_source),
              iconColor: primaryColor,
              subtitle: Text('Tüm kişisel verileriniz güvende.',
                  style: TextStyle(fontSize: 18, fontFamily: 'Caveat')),
            ),
            Divider(),
            ListTile(
              title: Text('Öneri ve Şikayet',
                  style: TextStyle(fontSize: 25, fontFamily: 'Caveat')),
              leading: Icon(Icons.warning_amber),
              iconColor: primaryColor,
              subtitle: Text('bilgi@mryed.com',
                  style: TextStyle(fontSize: 18, fontFamily: 'Caveat')),
            ),
            Divider(),
            ListTile(
                title: Text(
                  'Ayarlar',
                  style: TextStyle(fontSize: 25, fontFamily: 'Caveat'),
                ),
                //Sonuna icon eklemek istersek leading yerine; trailing kullanılır.
                leading: Icon(Icons.settings_applications_rounded),
                iconColor: primaryColor,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()))),
            Divider(),
            ListTile(
                title: Text(
                  'Çıkış',
                  style: TextStyle(fontSize: 25, fontFamily: 'Caveat'),
                ),
                //Sonuna icon eklemek istersek leading yerine; trailing kullanılır.
                leading: Icon(Icons.logout_outlined),
                iconColor: primaryColor,
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())))
          ],
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
