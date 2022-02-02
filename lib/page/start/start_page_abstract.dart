import 'package:flutter/material.dart';

abstract class StartPageColor{
  static const mainLight = Color.fromARGB(255, 171, 156, 152);
}

abstract class StartPageTitel{
 static const  text = Text('Dag Book', style: TextStyle(
  color: Color.fromARGB(255, 35, 28, 23),
  fontSize: 30,
  fontFamily: 'MochiyPopPOne',
  ),);
}

abstract class StartPageBody{
 static const text = Text('Я Ваш помощник в поиске знаний о родном крае.\n'
     'Здесь Вы можете ознакомиться с книгами о Кавказе.',
  style: TextStyle(
      fontSize: 20,
      color: Color.fromARGB(255, 231, 215, 201),
      fontFamily: 'Lobster'
  ),);
}
