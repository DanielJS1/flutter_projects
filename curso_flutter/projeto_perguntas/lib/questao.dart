// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {

  final String texto;

  Questao(this.texto);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}