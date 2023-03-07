import 'package:flutter/material.dart';

void main() => runApp(const MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Adding assets"),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Image(image: AssetImage('assets/images/bg.jpg')),
              Image.asset("assets/icons/icon.png"),
            ],
          ),
        ),
      ),
    );
  }
}
