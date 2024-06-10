import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/Categoury_Page.dart';
import 'package:quotes_app/Screens/Home_Page.dart';
import 'package:quotes_app/Screens/Love_quotes.dart';

import 'Screens/Motivational_quotes.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homepage(),
        '/cat':(context) => Catgpage(),
        '/mt':(context) => Motivation(),
        '/love':(context)=>LoveQuotes(),
      },
    );
  }
}
