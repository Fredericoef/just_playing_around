import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_playing_around/json/nomes__e_imagens.dart';
import 'package:just_playing_around/telas/TelaPlanta.dart';

class Trending extends StatefulWidget {
  @override
  _TrendingState createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    /*
    void abrirPlanta(){
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TelaPlanta()));
    }
    */

    return Container(
      child: ListView.builder(
        itemCount: listagem.length,
        itemBuilder: (context, index) {
          Plantas plantas = listagem[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  plantas.imagem,
                ),
              ),
              title: Text(
                plantas.listas,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(plantas.subtitulo),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            TelaPlanta(plantas: listagem[index])));
              },
            ),
          );
          /*
          return ResumoLista(
            imagem: plantas.imagem,
            listas: plantas.listas,
            subtitulo: plantas.subtitulo,
          );
          */
        },
      ),
    );
  }
}
