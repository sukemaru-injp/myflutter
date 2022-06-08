import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

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
  _MyHomeFirstState createState() => _MyHomeFirstState();
}

class _MyHomeFirstState extends State<FirstFlutter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(children: [Icon(Icons.car_repair_sharp), Text('FirstFlutter')]),
      ),
      drawer: Drawer(
          child: Center(
        child: Text('drawer'),
      )),
      body: Column(
        children: [
          Text('Test!'),
          Text('Test2'),
          Text('$_counter'),
          TextButton(onPressed: () => {print('Test')}, child: Text('Ok')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _increment(),
        tooltip: 'Increment',
        child: Icon(Icons.tiktok),
      ),
    );
  }
}
