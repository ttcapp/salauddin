import 'package:flutter/material.dart';
import 'package:salauddin/course.dart';
import 'package:salauddin/home_page.dart';
import 'package:salauddin/main.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
String _email="bappymehedihasan5@gmail.com";
String _password="105534sm";
final _formkey= GlobalKey<FormState>();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(
          top: 40, left: 30, right: 30
        ),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 60,),
              TextFormField(
                validator: (text){
                  if(text == null || text.isEmpty){
                    return "This field is empty";
                  }
                  else if(text != _email){
                    return"Incorrect Email";
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter Email Address",
                  hintStyle: TextStyle(color: Colors.grey),
                  contentPadding: EdgeInsets.only(left: 15),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal
                    ),
                    borderRadius: BorderRadius.circular(8),
                  )


                ),

              ),
              SizedBox(
              height: 20,
              ),
              TextFormField( validator: (text){
                if(text == null || text.isEmpty){
                  return "This field is empty";
                }
                else if(text != _password){
                  return"Incorrect password";
                }
              },
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter password ",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.only(left: 15),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.teal
                      ),
                      borderRadius: BorderRadius.circular(8),
                    )


                ),

              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal
                ),
                  onPressed: (){
                  if(_formkey.currentState! .validate()){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>MyHomePage()));


                  }

                  },
                  child: Text("Log In"))
            ],
          ),
        ),
      ),
    );
  }
}

