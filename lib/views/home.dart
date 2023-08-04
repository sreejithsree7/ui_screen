import 'package:flutter/material.dart';
import 'package:ui_screen/views/screen_1.dart';
import 'package:ui_screen/views/screen_2.dart';
import 'package:ui_screen/views/screen_3.dart';
import 'package:ui_screen/views/screen_4.dart';
import 'package:ui_screen/views/screen_5.dart';
import 'package:ui_screen/views/screen_6.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AdditionalInformation(),
                    ));
                  },
                  child: Text('screen 1')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ManageStore(),
                    ));
                  },
                  child: Text('screen 2')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Payments(),
                    ));
                  },
                  child: Text('screen 3')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DukaanPremium(),
                    ));
                  },
                  child: Text('screen 4')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => order1688068(),
                    ));
                  },
                  child: Text('screen 5')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Catalogue(),
                    ));
                  },
                  child: Text('screen 6')),
            ],
          ),
        ],
      ),
    );
  }
}
