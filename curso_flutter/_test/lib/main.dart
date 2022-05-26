import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'App de teste!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.text_snippet)),
            Tab(icon: Icon(Icons.audiotrack)),
            Tab(icon: Icon(Icons.ondemand_video_outlined))
          ],
          ),
          title: Text(widget.title),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Pressione o botão quantas vezes quiser! Veja o contador:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
                textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
             Text(
              '$_counter',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.skip_previous, color: Colors.black, size: 60),
                Icon(Icons.pause_circle,color:Colors.green, size: 100),
                Icon(Icons.skip_next,color: Colors.black, size: 60)
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}