import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          textStyle: const TextStyle(color: Colors.white),
        ),
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
  //hhhhh
}