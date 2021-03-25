import 'package:flutter/material.dart';
import 'package:quiz_pergunta/questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntas != null ? perguntaSelecionada < perguntas?.length : false;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = perguntas[perguntaSelecionada]['respostas'];
    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((t) => Resposta(t, quandoResponder)).toList(),
      ],
    );
  }
}
