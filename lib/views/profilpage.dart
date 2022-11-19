import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('$command bulunamadı');
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height,
          color: backColor,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(33),
                    topRight: Radius.circular(33))),
            height: size.height * 0.65,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.08),
          child: Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              radius: size.height * .08,
              backgroundImage: AssetImage('assets/images/mryed.jpg'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.24),
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Yunus Emre',
              style: TextStyle(
                  fontFamily: 'Caveat',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: backColor),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.31),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    customLaunch('mailto:bilgi@mryed.com');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: backColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                InkWell(
                  onTap: () {
                    customLaunch('tel:+905555555555');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: backColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.phone),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                InkWell(
                  onTap: () {
                    customLaunch('https:wa.me/905555555555');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: backColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.whatsapp),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                InkWell(
                  onTap: () {
                    customLaunch('https:mryed.com');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: backColor,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.link),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.height * 0.4,
              left: size.width * 0.05,
              right: size.width * 0.04),
          child: Column(
            children: [
              Text(
                'HAKKINDA;',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: backColor,
                    fontSize: 20,
                    fontFamily: 'Caveat'),
              ),
              Divider(
                color: backColor,
              ),
              Text(
                'Şimdiye kadar ..., ... ve ... hastalıklarının olduğunu bildirdin. Bu doğrultuda bildirimler alacaksın.',
                style: TextStyle(
                    fontSize: 19, color: backColor, fontFamily: 'Caveat'),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                'KİŞİSEL BİLGİLER;',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: backColor,
                    fontSize: 20,
                    fontFamily: 'Caveat'),
              ),
              Divider(
                color: backColor,
              ),
              ListTile(
                title: Text(
                  'İsim: Yunus emre',
                  style:
                      TextStyle(color: backColor, fontWeight: FontWeight.bold),
                ),
                leading: Icon(
                  Icons.edit,
                  color: backColor,
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10.10.2022 tarihinden beri üyesin.',
                      style: TextStyle(color: backColor),
                    ),
                    Text(
                      'Doğum Tarihi: xxxx',
                      style: TextStyle(color: backColor),
                    ),
                    Text(
                      'E-Posta: bilgi@mryed.com',
                      style: TextStyle(color: backColor),
                    ),
                    Text(
                      'Şifre: *********',
                      style: TextStyle(color: backColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
