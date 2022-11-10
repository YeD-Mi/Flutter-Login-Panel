import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:login/color.dart';

const List<String> list = <String>['HPL', 'CRM', 'PH Değeri', 'Kolestrol'];

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final TextEditingController degerController = TextEditingController();
  String dropdownValue = list.last;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Kontrol Edilecek Tahlil:',
              style: TextStyle(fontSize: 22, fontFamily: 'Caveat'),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              dropdownColor: backColor,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: TextStyle(
                  color: primaryColor, fontSize: 24, fontFamily: 'Teko'),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
        TextField(
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(4)
          ],
          controller: degerController,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.local_hospital),
            hintText: 'Değer',
            hintStyle: TextStyle(fontFamily: 'Caveat', fontSize: 22),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: primaryColor),
            onPressed: () {
              print('Sonuç');
            },
            child: Text(
              'Sonuç Göster',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Teko',
              ),
            )),
        SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.9),
                  blurRadius: 2,
                )
              ],
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                Text(
                  'Sonuçlarınız burada gözükecek.',
                  style: TextStyle(fontFamily: 'Caveat', fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Referans Değer: ',
                  style: TextStyle(fontFamily: 'Caveat', fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sizin Değeriniz:',
                  style: TextStyle(fontFamily: 'Caveat', fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'AÇIKLAMA',
                  style: TextStyle(fontFamily: 'Caveat', fontSize: 25),
                ),
              ],
            ),
          ),
        )
      ]),
    )));
  }
}
