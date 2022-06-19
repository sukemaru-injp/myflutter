import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:myflutter/pages/test1.dart';

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

  bool flag = false;

  _click() async {
    setState(() {
      flag = !flag;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: flag ? 0.1 : 1.0,
              duration: Duration(seconds: 3),
              child:
                  Text("消えゆく文字", style: Theme.of(context).textTheme.headline4),
            ),
            AnimatedSize(
                duration: Duration(seconds: 3),
                child: SizedBox(
                    width: flag ? 50 : 200,
                    height: flag ? 50 : 200,
                    child: Container(color: Colors.purple))),
            AnimatedAlign(
                duration: Duration(seconds: 3),
                alignment: flag ? Alignment.topLeft : Alignment.bottomRight,
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Container(color: Colors.green)))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _click(),
        tooltip: 'Increment',
        child: Icon(Icons.tiktok),
      ),
    );
  }
}
