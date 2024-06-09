import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quotes_app/utils/Quote_Data_List.dart';
import 'package:quotes_app/utils/quote_model.dart';

QuoteModel? quoteModel;
bool xh = false;

class CatPage extends StatefulWidget {
  const CatPage({super.key});

  @override
  State<CatPage> createState() => _CatPageState();
}

class _CatPageState extends State<CatPage> {
  @override
  void initState() {
    quoteModel = QuoteModel.toList(quotelist);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('🙏.Suvichaar.🙏',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black)),
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  xh = !xh;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(xh ? Icons.list_alt : Icons.grid_3x3),
              ))
        ],
      ),
      body: (xh)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 9 / 16),
              itemBuilder: (context, index) => Card(
                  // color: img[index % img.length],
                  child: ListTile(
                    leading: Container(width: 200,height: 200,decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img[index]),
                      ),
                      List
                    ),),
                    title: Text(quoteModel!.quoteModelist[index].quote!),
                    subtitle: Text(quoteModel!.quoteModelist[index].author!),
                  )))
          : ListView.builder(
              itemBuilder: (context, index) => Card(
                    // color:  img[index % img.length],
                    child: Column(children: [
                      ListTile(title: Text(quoteModel!.quoteModelist[index].quote!),
                        subtitle: Text(quoteModel!.quoteModelist[index].author!),
                      )
                    ]),
                  )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index++;
          });
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelist.length);

          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
               // backgroundColor: img[x % img.length],
                title: Text(quoteModel!.quoteModelist[x].author!),
                content: Text(quoteModel!.quoteModelist[x].quote!),
              );
            },
          );
        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}

int index = 0;
List img=[];
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CatPage extends StatefulWidget {
//   const CatPage({super.key});
//
//   @override
//   State<CatPage> createState() => _CatPageState();
// }
//
// class _CatPageState extends State<CatPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Categourypage',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
//       ),
//     );
//   }
// }
