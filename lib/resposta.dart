import 'package:flutter/material.dart';


class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  const Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(3),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 0, 0, 0),
          textStyle: const TextStyle(color: Colors.white),
        ),
        child: Text(texto),
        onPressed: quandoSelecionado,
      ),
    );
  }
}