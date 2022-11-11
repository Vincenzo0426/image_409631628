import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ImageBrowse(title: 'image_409631628'),
    );
  }
}

class ImageBrowse extends StatefulWidget
{
  const ImageBrowse({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ImageBrowse> createState() => _ImageBrowseState();
}

class _ImageBrowseState extends State<ImageBrowse>
{
  var images=['assets/RRRRRRR.jpg', 'assets/disgusting.jpg', 'assets/ikun.jpg', 'assets/roger.jpg'];
  int imageindex = 1;
  String defult_image = "assets/RRRRRRR.jpg";

  void down()
  {
    if(imageindex <= 0){imageindex=4;}
    defult_image = images[imageindex-1];
    imageindex = imageindex-1;
  }
  void up()
  {
    if(imageindex >= 3){imageindex=-1;}
    defult_image = images[imageindex+1];
    imageindex = imageindex+1;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap:(){
                const snackBar = SnackBar(
                  content: Text('                       🐸勒', textScaleFactor: 1.8,),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 300,
                width: 400,
                child: Image.asset(defult_image),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          down();
                        });
                      },
                      child: Text("上一張圖片",
                        textScaleFactor:1.3,)
                  ),
                  SizedBox(width: 100,),
                  ElevatedButton(
                    onPressed: (){
                      setState(() {
                        up();
                      });
                    },
                    child: Text("下一張圖片",
                      textScaleFactor:1.3,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

