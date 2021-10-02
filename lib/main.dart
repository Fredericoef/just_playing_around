import 'package:flutter/material.dart';
import 'package:just_playing_around/Home.dart';

void main() => runApp(MaterialApp(
      title: 'Plantas Ornamentais',
      theme: ThemeData(
        textTheme: const TextTheme(
            bodyText1: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black87),
            bodyText2: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54)),
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    ));
