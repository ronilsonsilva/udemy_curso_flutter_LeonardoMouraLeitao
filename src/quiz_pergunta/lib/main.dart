import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';


main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto' : 'Qual é a sua cor favorita?',
      'resposta' : ['Preto','Vermelho','Verde','Branco']
    },
    {
      'texto' : 'Qual é o seu animal favorito?',
      'resposta' : ['Jabuti','Macaco','Gato','Cachorro']
    },
    {
      'texto' : 'Qual seu time de futebol?',
      'resposta' : ['Flamengo','Palmeiras','Santo','Barcelona']
    }
  ];

  void _responder() {
    if(temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas?.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder : _responder
            )
            : Resultado(),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}


