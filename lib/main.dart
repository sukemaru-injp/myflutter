import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Startup Name Generator',
      home: FirstFlutter(),
    );
  }
}

// First Test View
class FirstFlutter extends StatefulWidget {
  const FirstFlutter({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<FirstFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(children: [Icon(Icons.car_repair_sharp), Text('FirstFlutter')]),
      ),
      body: Column(
        children: [
          Text('Test!'),
          Text('Test2'),
          TextButton(onPressed: () => {print('Test')}, child: Text('Ok'))
        ],
      ),
    );
  }
}
