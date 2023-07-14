import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/task.dart';

import 'task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Meus Hobbies em Flutter'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: Duration(milliseconds: 800),
          child: ListView(
            children: [
              Task(
                  'Aprender Flutter',
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                  2),
              Task(
                  'Jiu Jitsu',
                  'https://images.unsplash.com/photo-1564415315949-7a0c4c73aab4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                  5),
              Task(
                  'Surfar',
                  'https://tahititourisme.com/wp-content/uploads/2019/07/Tom-Servais-Tahiti-Surf-Pro-2017servais17_0332781140x550px.jpg',
                  1),
              Task(
                  'Estudar',
                  'https://cdn.borainvestir.b3.com.br/2022/11/22142752/dez-livros-para-ler-aprenda-sobre-educacao-financeira-e-investimentos.jpg.webp',
                  4),
              Task(
                  'Tomar café',
                  'https://t.ctcdn.com.br/mXU4Tr_WTJusns9aX4y9eFarnDM=/1200x675/smart/filters:format(webp)/i608550.jpeg',
                  1),
              Task(
                  'Ir ao cinema',
                  'https://1.bp.blogspot.com/-n5zpjeitiTI/XzG-s9WeqOI/AAAAAAAAWag/ltc-UZ6HaKwky82PdZRNDF5lNQJ_mEqugCLcBGAsYHQ/s1200/Pipoca_Cinema_FB.jpg',
                  3),
              Task(
                  'Jogar video game',
                  'https://conteudo.imguol.com.br/c/noticias/92/2022/06/07/game-gamer-jogo-console-play-1654637269241_v2_900x506.jpg',
                  4),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            opacidade = !opacidade;
          },
          child: Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}




