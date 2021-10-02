import 'package:flutter/material.dart';
import 'package:just_playing_around/Home.dart';

void main() => runApp(MaterialApp(
      title: 'Plantas Ornamentais',
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyText1: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green))),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));
