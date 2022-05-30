import 'package:flutter/material.dart';
import 'biblioteca.dart';

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
        brightness: Brightness.dark, 
      ),
      home: const MyHomePage(title: 'Premium!'),
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
          toolbarHeight: 88,
          actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.search)),
          ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                  Image.asset(
                 'images/logo.png',
                  fit: BoxFit.cover,
                  height: 35,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.title),
              )
          ],
        ),
              
          bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.text_snippet)),
            Tab(icon: Icon(Icons.audiotrack)),
            Tab(icon: Icon(Icons.ondemand_video_outlined))
          ],
          ),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey
              ),
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Biblioteca()));
              },
              child: const Text("Biblioteca"),
            ),

              Image.asset("images/album.jpg", width: 350, height: 350),
              
              const Text(
                'Post Malone - Cooped Up with Roddy Ricch',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
                textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.skip_previous, color: Colors.black, size: 50)),
                    const Padding(
                      padding: EdgeInsets.all(5),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.play_circle, color: Colors.green, size: 70)),
                    const Padding(
                      padding: EdgeInsets.all(15),
                  ),
                  IconButton(onPressed: () => {}, icon: const Icon(Icons.skip_next, color: Colors.black, size: 50)),
                  //ElevatedButton(onPressed: (){
                   // print("lala");
                  //}, 
                  //style: ElevatedButton.styleFrom(
                    //primary: Colors.purple
                  //),
                  //child: const Text("dasd"))
                ],)
             ],
           ),
          )
        ),
    );
  }
}
