import 'dart:math';

import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Appiadas",
      home: AppiadasScreen()
    );
  }
}

class Piada {
  final String pergunta;
  final String resposta;

  Piada({required this.pergunta, required this.resposta});
}

class AppiadasScreen extends StatefulWidget {
  const AppiadasScreen({super.key});

  @override
  State<AppiadasScreen> createState() => _AppiadasScreenState();
}

class _AppiadasScreenState extends State<AppiadasScreen> {
  final List<Piada> _piadas = [
    Piada(
     pergunta: "Porque o desenvolvedor levou o computador ao médico?",
     resposta: "Pois ele estava com vírus"
     ),
    Piada(
      pergunta: "Por que o astronauta terminou com a namorada?", 
      resposta: "Porque precisava de espaço."),
    Piada(
      pergunta: "Por que o livro de matemática tá sempre triste?" , 
      resposta: "Porque tem muitos problemas."),
      Piada(
      pergunta: "Qual é o animal mais antigo? A zebra..." , 
      resposta: "Porque é preto e branco desde sempre."),
      Piada(
      pergunta: "Por que o jacaré tirou o filho da escola?" , 
      resposta: "Porque ele réptil de ano."),
      Piada(
      pergunta: "O que um raio disse para o outro?" , 
      resposta: "Nossa, você é tão 'chocante'!"),
      Piada(
      pergunta: "O que o peixe faz quando está feliz?" , 
      resposta: "Nada!"),
      Piada(
      pergunta: "Qual é o animal que não vale mais nada?" , 
      resposta: "O Javali"),
      Piada(
      pergunta: "Por que o martelo foi expulso da balada?" , 
      resposta: "Porque ele estava muito batido"),
      Piada(
      pergunta: "Sabe qual a melhor maneira de consumir tempo?" , 
      resposta: "Comer relógios"),
      Piada(
      pergunta: "Sabe qual é a cidade que não aceita táxi?" , 
      resposta: "Uberlândia!"),
      Piada(
      pergunta: "Sabe onde a Barbie comprou as roupas dela?" , 
      resposta: "Na Barbiea"),
      Piada(
      pergunta: "Minha avó tá sem relógio..." , 
      resposta: "Pois é, já virou uma sem hora")
  ];
  Piada _piadaSelecionada = Piada(
    pergunta: "Aqui vai uma piada", 
    resposta: "Clique no botão abaixo");

  void _trocarPiada() {
    final index = Random().nextInt(_piadas.length);
    
    setState(() {
      _piadaSelecionada = _piadas[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Appiadas"),),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/background_joker.png"), fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //Vertical
            crossAxisAlignment: CrossAxisAlignment.center, //Horizontal
            children: [
              Text(
                "${_piadaSelecionada.pergunta}\n\n${_piadaSelecionada.resposta}", textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  
                  color: Colors.orangeAccent
              )),

              SizedBox(height: 24,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onPressed: _trocarPiada,
                  child: Text("Nova Piada"),
                )
              )
              
            ],
          ),
        ),
      ),
    );
  }
}