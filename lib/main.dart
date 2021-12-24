import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WaifuPage(),
    );
  }
}

class WaifuPage extends StatelessWidget {
  const WaifuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Holo Waifu"),
        backgroundColor: Colors.lightBlue,
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Waifu(),
    );
  }
}

class Waifu extends StatefulWidget {
  const Waifu({Key? key}) : super(key: key);

  @override
  _WaifuState createState() => _WaifuState();
}

class _WaifuState extends State<Waifu> {
  int wifeNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            wifeNum = Random().nextInt(3) + 1;
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500),
          child: Image.asset('images/waifu$wifeNum.png'),
        )
      ),
    );
  }
}