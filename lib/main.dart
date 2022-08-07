// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
   Uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title:  Center(
          child: Text(
            '2022 Özel Günler ',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: iskelet(),
    ));
  }
}

class iskelet extends StatefulWidget {
  iskelet({Key? key}) : super(key: key);

  @override
  State<iskelet> createState() => _iskeletState();
}

class _iskeletState extends State<iskelet> {
  String takvimbaslangic = 'Hoş Geldiniz...';

  resmiGoster() {
    setState(() {
      takvimbaslangic = '1 Ocak -Yılbaşı '
          '23 Nisan -Ulusal Egemenlik ve Çocuk Bayramı\n'
          '1 Mayıs - Emek ve Dayanışma günü\n'
          '19 Mayıs - Atatürkü Anma Gençlik ve Spor Bakanlığı\n'
          '15 Temmuz - Demokrasi ve Milli Birlik Günü\n'
          '30 Ağustos - Zafer Bayramı\n'
          '29 Ekim - Cumhuriyet Bayramı\n';
    });
  }
  diniGoster(){
    setState(() {
      takvimbaslangic=
      'Ramazan Bayramı - 2.3.4.Mayıs \n'
       'Kurban Bayramı - 9.10.11.12.Temmuz';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 15.0,right: 15.0)  ,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/PicsArt_03-06-06.53.31-01.jpeg'),
            Text(
              takvimbaslangic,
              style:  TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

             RaisedButton(
              onPressed:resmiGoster ,
              color:Colors.pinkAccent,
              child: Text(
                'Resmi Tatiller',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0),
              ),
            ),
            RaisedButton(
              onPressed:  diniGoster,
              color: Colors.pinkAccent,
              child: Text(
                'Bayram Tatilleri',
                style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
