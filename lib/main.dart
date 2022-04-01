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
      home: LayoutTest(),
    );
  }
}

// First Test View
class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final _suggestions = <WordPair>[];
    final _biggerFont = const TextStyle(fontSize: 18.0);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: /*1*/ (context, i) {
            if (i.isOdd) return const Divider(); /*2*/
            final index = i ~/ 2; /*3*/
            if (index >= _suggestions.length) {
              _suggestions.addAll(generateWordPairs().take(10)); /*4*/
            }
            return ListTile(
                title: Text(
              _suggestions[index].asPascalCase,
              style: _biggerFont,
            ));
          }),
    );
  }
}

// LayoutTest View
class LayoutTest extends StatefulWidget {
  const LayoutTest({Key? key}) : super(key: key);
  @override
  _LayOutState createState() => _LayOutState();
}

class _LayOutState extends State<LayoutTest> {
  @override
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: color,
                )))
      ],
    );
  }

  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColorDark;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );

    Widget textSection = const Padding(
        padding: EdgeInsets.all(30),
        child: Text(
          "テムズ川は長さ346キロメートルある南イングランドを流れる川で、下流でロンドンと海をつないでいます。川にはたくさん有名な橋が架かっており、その中でもタワーブリッジやミレニアムブリッジ、ロンドン橋は世界的にも有名な観光地です。川のほとりを進めば、エリザベスタワーやロンドンアイ、ロンドン塔など様々な観光名所があります。ロンドンを舞台にした小説や劇、テレビドラマなどにたびたび登場しています。",
          softWrap: true,
        ));

    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/london-min.png',
                height: 240, width: 600, fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection
          ],
        ));
  }
}

Widget titleSection = Container(
    padding: const EdgeInsets.all(25),
    child: Row(children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text('テムズ川',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red))),
          Text('ロンドンとウェストミンターを繋いでいる', style: TextStyle(color: Colors.grey[500]))
        ],
      )),
      Icon(Icons.star, color: Colors.red[500]),
      const Text('41'),
    ]));
