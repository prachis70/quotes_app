import 'package:flutter/material.dart';
import 'package:quotes_app/Screens/Categoury_Page.dart';
import 'package:quotes_app/Screens/Home_Page.dart';
void main()
{
  runApp(Quote_App());
}
class Quote_App extends StatelessWidget {
  const Quote_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Homepage(),
        '/cat':(context) => CatPage(),
      },
    );
  }
}
