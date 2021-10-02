import 'package:flutter/material.dart';
import 'package:just_playing_around/CustomSearchDelegate.dart';
import 'package:just_playing_around/json/nomes__e_imagens.dart';
import 'package:just_playing_around/telas/Explore.dart';
import 'package:just_playing_around/telas/Favorites.dart';
import 'package:just_playing_around/telas/Trending.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  String selectedPlantas = '';

  final List<Plantas> listagemHome = listagem;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [Trending(), Explore(), Favorites()];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              final plantaSelecionada = await showSearch(
                  context: context,
                  delegate: PlantasSearch(
                    listagem: listagemHome,
                  ));
              setState(() {});
            },
          )
        ],
        backgroundColor: Colors.green,
        title: Text(
          'Plantas Ornamentais',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              //Header do Drawer as the name says
              padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Guia de Plantas Ornamentais',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
              ),
              title: Text('Profile'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('Favorites'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
          ],
        ),
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            label: 'Trending',
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
              label: 'Explore', icon: Icon(Icons.trending_up)),
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(
              Icons.favorite_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
