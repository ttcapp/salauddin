import 'dart:math';

import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({Key? key}) : super(key: key);

  @override
  _SecondpageState createState() => _SecondpageState();
}


String imgSrc= "https://upload.wikimedia.org/wikipedia/commons/8/8c/Red_rose_stock_image.jpg";
double conHeight=50;
double conWidth=50;
class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          InkWell(
            onDoubleTap: (){
              setState(() {
                conHeight=50;
                conWidth=50;
              });
            },
            onTap: (){
              setState(() {
                conHeight=200;
                conWidth=200;
              });

            },
            child: AnimatedContainer(
              height: conHeight,
              width: conWidth,
              duration: Duration(microseconds: 3000),
                child: Image.network(imgSrc)),
          ),
        ],
      ),
    );
  }
}
