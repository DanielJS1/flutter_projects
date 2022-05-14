import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual é o seu aninal favorito?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Perguntas"),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta("Resposta 1"),
            Resposta("Resposta 2"),
            Resposta("Resposta 3"),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}