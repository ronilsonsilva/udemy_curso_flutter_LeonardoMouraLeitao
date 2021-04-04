import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() onResetAnswers;

  Resultado(this.pontuacao, this.onResetAnswers);

  String get fraseFinal {
    if(pontuacao < 8)
      return 'Foi abaixo da média!';
    else if(pontuacao < 12)
      return 'Foi na média!';
    else if(pontuacao < 16)
      return 'Foi bom, mas poderia ser melhor!';
    else return 'Nível Jedi!';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
            child: Text(
              fraseFinal,
              style: TextStyle(fontSize: 28),
            )
        ),
        ElevatedButton(
          onPressed: onResetAnswers,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(16.0)),
          ),
          child: Text(
            'Reiniciar?',
            style: TextStyle(fontSize: 18),
          ),
        )
      ],
    );
  }
}
