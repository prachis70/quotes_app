import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/Categoury_Page.dart';
import 'package:quotes_app/Screens/Edit_page.dart';
import 'package:quotes_app/Screens/Happy_quotes.dart';
import 'package:quotes_app/Screens/Home_Page.dart';
import 'package:quotes_app/Screens/Love_quotes.dart';
import 'package:quotes_app/Screens/Mornig_Quotes.dart';
import 'package:quotes_app/Screens/Sad_quotes.dart';
import 'package:quotes_app/Screens/spritual_quotes.dart';

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
        '/cate':(context) => Catgpage(),
        '/mt':(context) => Motivation(),
        '/love':(context)=>LoveQuotes(),
        '/sad':(context)=>SadQuotes(),
        '/happy':(context)=>Happy_Quotes(),
        '/sp':(context)=>SpritualQuotes(),
        '/gm':(context)=>MorningQuotes(),
        '/ed':(context)=>Edit_page(),
      }
    );
  }
}
