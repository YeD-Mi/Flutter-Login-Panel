import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:login/color.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  bool bildirim = false;
  bool ses = false;
  bool oneri = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Neyim Var Ayarlar')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Bildirimler',
                  style: TextStyle(fontFamily: 'Teko', fontSize: 24),
                ),
                Switch(
                  value: bildirim,
                  onChanged: (value) {
                    setState(() {
                      bildirim = value;
                    });
                  },
                  activeColor: primaryColor,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Ses',
                  style: TextStyle(fontFamily: 'Teko', fontSize: 24),
                ),
                Switch(
                  value: ses,
                  onChanged: (value1) {
                    setState(() {
                      ses = value1;
                    });
                  },
                  activeColor: primaryColor,
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Akıllı Öneriler',
                  style: TextStyle(fontFamily: 'Teko', fontSize: 24),
                ),
                Switch(
                  value: oneri,
                  onChanged: (value) {
                    setState(() {
                      oneri = value;
                    });
                  },
                  activeColor: primaryColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
