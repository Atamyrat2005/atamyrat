import 'package:flutter/material.dart';

void main() => runApp(const MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'DancingScript'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Adding assets"),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: [
              const Image(image: AssetImage('assets/images/bg.jpg')),
              Image.asset("assets/icons/icon.png"),
              const Positioned(
                top: 46,
                left: 120,
                child: Text(
                  "My custom font",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      // fontFamily: 'DancingScript'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
