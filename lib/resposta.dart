import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
          textStyle: TextStyle(color: Colors.white),
        ),
        child: Text(texto),
        onPressed: (){
        },
      ),
    );
  }
}