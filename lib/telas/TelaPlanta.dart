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


  TelaPlanta(this.plantas);

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
                            fontWeight: FontWeight.bold
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
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Padding( //Encapsula a linha da tabela de informações agronômicas
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(_solo,
                                  style: Theme.of(context).textTheme.bodyText1,

                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(plantas.solo)
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
                                Text(_luzSolar)
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
                                Text(_irrigacao)
                              ],
                            ),
                            Column(
                              children: [
                                Text(plantas.hidrico)
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
                                Text(_origem)
                              ],
                            ),
                            Column(
                              children: [
                                Text(plantas.origem)
                              ],
                            )
                          ],
                        ),
                      ),


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

