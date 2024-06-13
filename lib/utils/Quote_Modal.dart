
import 'package:flutter/material.dart';

class QuoteModel
{
  String? author;
  String? quote;
  String? love;
  String? sad;
  String? happy;
  String? spritual;
  String? gmq;
  List <QuoteModel> quoteModelist=[];

  QuoteModel({this.author,this.quote,this.love,this.sad,this.happy,this.spritual,this.gmq});

  factory QuoteModel.fromQuotes(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote'],love:m1['love'],sad: m1['sad'],spritual: m1['spritual'],gmq: m1['gmq'],happy: m1['happy']);
  }


  QuoteModel.toList(List l1)
  {
    for(int i=0;i<l1.length;i++)
    {
      quoteModelist.add(QuoteModel.fromQuotes(l1[i]));
    }

  }

}
bool xh=false;
List colorList=[
 // Colors.pinkAccent,
  Colors.white,
  Colors.yellowAccent,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.teal,
  Colors.grey,
  Colors.white,
  Colors.green,
  Colors.amber,
  Colors.teal,
  Colors.grey,
];
