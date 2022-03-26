import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    VidenteApp(),
  );
}

class VidenteApp extends StatefulWidget {
  const VidenteApp({Key? key}) : super(key: key);

  @override
  State<VidenteApp> createState() => _VidenteAppState();
}

class _VidenteAppState extends State<VidenteApp> {
  int videnteImage = 1;

  @override
  Widget build(BuildContext context) {
    void randomVidente() {
      videnteImage = Random().nextInt(6) + 1;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xff332B25),
          body: SafeArea(
            child: Center(
                child: TextButton(
              onPressed: () {
                setState(() {
                  randomVidente();
                });
              },
              child: Image(
                image: AssetImage('imagens/vidente$videnteImage.png'),
              ),
            )),
          )),
    );
  }
}
