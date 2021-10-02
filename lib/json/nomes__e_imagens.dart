import 'package:flutter/material.dart';

class Plantas {
  final int id;
  final String imagem;
  final String listas;
  final String subtitulo;
  final String solo;
  final String luzSolar;
  final String hidrico;
  final String origem;
  final String comoPlantar;

  Plantas(
      {@required this.id,
      @required this.imagem,
      @required this.listas,
      @required this.subtitulo,
      @required this.solo,
      @required this.luzSolar,
      @required this.hidrico,
      @required this.origem,
      @required this.comoPlantar});
}

List<Plantas> listagem = [
  Plantas(
      id: 1,
      imagem:
          'https://images.unsplash.com/photo-1599842057874-37393e9342df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Begonia',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 2,
      imagem:
          'https://images.unsplash.com/photo-1599842057874-37393e9342df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Quaresmeira',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 3,
      imagem:
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Hibisco',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 4,
      imagem:
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Hibisco',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 5,
      imagem:
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Hibisco',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 6,
      imagem:
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Hibisco',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 7,
      imagem:
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Hibisco',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio'),
  Plantas(
      id: 8,
      imagem:
          'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      listas: 'Hibisco',
      subtitulo: 'Nome científico',
      solo: 'Tipo de solo aqui',
      luzSolar: 'Sombra ou pleno sol',
      hidrico: 'Muita ou pouca água',
      origem: 'Local de origem',
      comoPlantar: 'Passo a passo do plantio')
];

/*
List listas = ['Begonia', 'Quaresmeira', 'Hibisco', ''];

List imagem = ['https://images.unsplash.com/photo-1599842057874-37393e9342df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1599842057874-37393e9342df?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdpcmx8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
  'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60'
];
*/
