import 'package:flutter/material.dart';
import 'package:teste/main.dart';

class Biblioteca extends StatelessWidget {
  const Biblioteca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Biblioteca"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.library_music, color: Colors.green, size: 30),
            const Text(
              "Biblioteca de músicas: ",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey
              ),
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const MyApp()));
              },
              child: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}