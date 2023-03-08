import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Counter by Atamyrat';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), centerTitle: true, backgroundColor: Colors.indigoAccent,),
        backgroundColor: Colors.black,
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

int _volume = 0;
int _tap = 0;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.delete, size: 35, color: Colors.grey,),
          tooltip: 'Delete',
          onPressed: () {
            setState(() {
              _volume = 0;
              _tap = 0;
            });
          },
        ),
        IconButton(
          icon: const Icon(Icons.add_circle, size: 35, color: Colors.green,),
          tooltip: 'Increase volume by 1',
          onPressed: () {
            setState(() {
              _volume += 1;
              _tap += 1;
            });
          },
        ),
        Text('$_volume', style: const TextStyle(color: Colors.white, fontSize: 25),),
        IconButton(
          icon: const Icon(Icons.remove_circle, size: 35, color: Colors.red,),
          tooltip: 'Decrease volume by 1',
          onPressed: () {
            setState(() {
              _volume -= 1;
              _tap += 1;
            });
          },
        ),
        Text('Knopka basan sanynyz -> $_tap', style: const TextStyle(color: Colors.yellow, fontSize: 18),),
      ],
    );
  }
}
