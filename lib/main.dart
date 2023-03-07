import 'package:flutter/material.dart';

void main() => runApp(const MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("My First app"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LinearProgressIndicator(value: 23),
                Text(
                  "23 %",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  "Press button to download",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
            onPressed: null,
          child: Icon(Icons.download),
        ),
      ),
    );
  }
}
