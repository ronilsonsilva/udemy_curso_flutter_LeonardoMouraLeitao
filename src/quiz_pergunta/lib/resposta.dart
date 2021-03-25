
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
        child: ElevatedButton(
            child: Text(this.texto),
            onPressed: this.quandoSelecionado,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(16.0))
            ),
        )
    );
  }
}
