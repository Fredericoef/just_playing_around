import 'package:flutter/material.dart';
import 'package:just_playing_around/json/nomes__e_imagens.dart';
import 'package:just_playing_around/telas/TelaPlanta.dart';

class PlantasSearch extends SearchDelegate<Plantas> {
  final List<Plantas> listagem;

  PlantasSearch({this.listagem});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    print('resultado: pesquisa realizada');

    final List<Plantas> todasPlantas = listagem
        .where(
          (itemPlanta) => itemPlanta.listas.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();

    return ListView.builder(
      itemCount: todasPlantas.length,
      itemBuilder: (context, index) => Card(
        child: ListTile(
          title: Text(todasPlantas[index].listas),
          onTap: () {
            //String placeholder = todasPlantas.listas[index];
            query = todasPlantas[index].listas;
            close(context, query as Plantas);
            //showResults(context);
          },
        ),
      ),
    );

    /*
    return Column(
      children:
        List.generate(listagem.length, (index) {
          return Card(
            child: ListTile(
              title: Text(
                //plantas[0].listas, esse funciona
                listagem[index].listas,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        })
      ,

    );
    */

    /*
    final mylist = listagem.where((p) => p.listas.toLowerCase().startsWith(query.toLowerCase())).toList();

    return mylist.isEmpty? Text('No results found..') : ListView.builder(
      itemCount: mylist.length,
      itemBuilder: (BuildContext context, int index) {
        final Plantas plantas = listagem[index];
        return ListTile(
          onTap: () async {

            return Column(
              children: <Widget>[

                Card(
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
                                  TelaPlanta(plantas)));
                    },
                  ),
                ),
                //itemLista.subtitulo.isEmpty? Text(itemLista.listas): Text(itemLista.subtitulo)
                /*
              Text(itemLista.listas),
              Text(itemLista.subtitulo),
              */

              ],
            );
          },


        );
      },);

      */

    //return Center(child: Text(query));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final mylist = query.isEmpty
        ? listagem
        : listagem
            .where(
                (p) => p.listas.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return mylist.isEmpty
        ? Text('No results found..')
        : ListView.builder(
            itemCount: mylist.length,
            itemBuilder: (BuildContext context, int index) {
              final Plantas itemLista = mylist[index];

              return Card(
                child: ListTile(
                  title: Column(
                    children: <Widget>[
                      itemLista.listas.isEmpty
                          ? Text(itemLista.subtitulo)
                          : Text(itemLista.listas),
                      //itemLista.subtitulo.isEmpty? Text(itemLista.listas): Text(itemLista.subtitulo)
                      /*
                Text(itemLista.listas),
                Text(itemLista.subtitulo),
                */
                    ],
                  ),
                  onTap: () {
                    //query = itemLista.listas;
                    //close(context, query as Plantas);
                    //print(query);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                TelaPlanta(plantas: itemLista)));

                    //showResults(context);
                  },
                ),
              );
            },
          );
  }
}
