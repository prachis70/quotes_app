import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quotes_app/Screens/Categoury_Page.dart';
import 'package:quotes_app/Screens/Motivational_quotes.dart';
import 'package:quotes_app/utils/Quote_Data_List.dart';
import 'dart:ui'as ui;
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:share_extend/share_extend.dart';

GlobalKey imgkey =GlobalKey();

class Edit_page extends StatefulWidget {
  const Edit_page({super.key});

  @override
  State<Edit_page> createState() => _Edit_pageState();
}

class _Edit_pageState extends State<Edit_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Edit_page',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 700,
              width: double.infinity,
              color: Colors.blueGrey,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  RepaintBoundary(
                    key:imgkey,
                    child: Container(
                      height: 600,
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage(images[select]),fit: BoxFit.cover)
                      ),
                      alignment: Alignment.center,
                      child: RichText(text: TextSpan(children: [
                        TextSpan(text: '${quotes[ch][select]['quote']}',style: TextStyle(color: Colors.white,fontSize: 30),),
                        TextSpan(text: '\n\n  -${quotes[ch][select]['author']}',style: TextStyle(color: Colors.white,fontSize: 35),)

                      ]),),
                    ),
                  ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () async {
                RenderRepaintBoundary boundary=imgkey.currentContext!.findRenderObject() as RenderRepaintBoundary;
                ui.Image image = await boundary.toImage();
                ByteData? byteData=await image.toByteData(format: ui.ImageByteFormat.png);
                Uint8List img = byteData!.buffer.asUint8List();
                ImageGallerySaver.saveImage(img);
              },icon: Icon(Icons.save,color: Colors.white,size: 50,),),

              IconButton(onPressed: () async {
                RenderRepaintBoundary boundary=imgkey.currentContext!.findRenderObject() as RenderRepaintBoundary;
                ui.Image image = await boundary.toImage();
                ByteData? byteData=await image.toByteData(format: ui.ImageByteFormat.png);
                Uint8List img = byteData!.buffer.asUint8List();
                final path=await getApplicationCacheDirectory();
                File file =File("${path.path}/img.png");
                file.writeAsBytes(img);
                ShareExtend.share(file.path, "image");

              },icon:Icon(Icons.share,color: Colors.white,size: 50,),),
            ],
          ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
