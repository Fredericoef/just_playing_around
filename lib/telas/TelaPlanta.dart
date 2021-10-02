import 'package:just_playing_around/main.dart';
import 'package:flutter/material.dart';
import 'package:just_playing_around/json/nomes__e_imagens.dart';

String _solo = "Solo: ";
String _luzSolar = 'Luminosidade: ';
String _irrigacao = 'Irrigação: ';
String _origem = 'Origem: ';
String _adubacao = 'Adubação: ';
const _fontWeight = FontWeight.bold;
const _tamanhoFonte = TextStyle(fontSize: 16);

class TelaPlanta extends StatelessWidget {

  final Plantas plantas;


  TelaPlanta({@required this.plantas});

  @override
    Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(
        title: Text(plantas.listas),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Column(

                  children: [
                    AspectRatio( //Widget da imagemda planta
                      aspectRatio:1.0,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: ClipRRect ( // CliRRect não funciona
                            borderRadius: BorderRadius.circular(20.5),
                            child: Image.network(plantas.imagem,
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding( // É o título da planta, que fica abaixo da imagem
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          plantas.listas,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF33691E),
                        )
                      ),
                    ),
                    Padding( // Aqui é o nome científico
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                          plantas.subtitulo,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey
                          )
                      ),
                    ),
                  ],

                ),
                Padding( // Aqui começa o padding que abrange a tabela de informações agronômicas
                  padding: const EdgeInsets.fromLTRB(12, 26, 12, 12),
                child: Column(
                  children: [
                    Padding(
                      //Encapsula a linha da tabela de informações agronômicas
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                _solo,
                                style: Theme.of(context).textTheme.bodyText1,

                                )
                              ],
                            ),
                            Column(
                              children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(plantas.solo))
                            ],
                            )
                          ],
                        ),
                      ),
                      Padding( //Encapsula a linha da tabela de informações agronômicas
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                              Text(
                                _luzSolar,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                            ),
                            Column(
                              children: [
                                Text(plantas.luzSolar)
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding( //Encapsula a linha da tabela de informações agronômicas
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                              Text(
                                _irrigacao,
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ],
                            ),
                            Column(
                              children: [
                              Text(
                                plantas.hidrico,
                              )
                            ],
                            )
                          ],
                        ),
                      ),
                      Padding( //Encapsula a linha da tabela de informações agronômicas
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                              Text(
                                _origem,
                                style: Theme.of(context).textTheme.bodyText1,
                              )
                            ],
                          ),
                          Column(
                            children: [Text(plantas.origem)],
                          )
                        ],
                      ),
                    ),
                    Column(
                      // Daqui em diante é o teste de alinhamento
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [Text('Testando 1')],
                                ),
                                Row(
                                  children: [Text('Testando 1')],
                                ),
                                Row(
                                  children: [Text('Testando 1')],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [Text('e agora 2')],
                                ),
                                Row(
                                  children: [Text('sim 2')],
                                ),
                                Row(
                                  children: [Text('tamo junto irmão')],
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                  ),
                )

                /*
                ListView.builder(
                  itemCount: listagem.length,
                  itemBuilder: (BuildContext context, int index) {
                    Plantas plantas = listagem[index];
                    return ListTile(
                      title: Text('Solo: ' + plantas.solo),
                    );
                  },)
                */
              ]
            ),
          ),
        ),
      ),
    );

  }
}

