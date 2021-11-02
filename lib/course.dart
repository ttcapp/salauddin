import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);

  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Course"),


      ),
      body: Column(
        children: [
          Row(
            children: [
            ],
          )
        ],
      )


    );
  }
}

