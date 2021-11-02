import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:salauddin/main.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
// global variables
String _email="bappymehedihasan5@gmail.com";
String _password="105534sm";
final _formKey=GlobalKey<FormState>();
TextEditingController emailController =TextEditingController();
TextEditingController passController =TextEditingController();
bool passVisit=true;
class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double w=MediaQuery.of(context).size.width;
    bool passVisi=true;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Third Page"),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding:  EdgeInsets.only(
              top: h*0.08, left: w*0.04,
              right: w*0.04, bottom: h*0.08,
            ),
            child: Column(
              children: [
                TextFormField(
                  controller: emailController,
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return "email is empty";
                    }
                    else if(text != _email){
                      return "Incorrect email";
                    }

                  },

                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(color: Colors.purpleAccent),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    suffixIcon: Icon(Icons.attach_email,
                    color: Colors.purple,),
                  ),
                ),
                TextFormField(
                  obscureText: passVisi,
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return "password is empty";
                    }
                    else if(text.length <=8){
                      return "password should be atleast 8 character";

                    }
                    else if(text != _password){
                      return "Incorrect password";
                    }

                  },
                  controller: passController,
                  decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(color: Colors.purpleAccent),
                    contentPadding: EdgeInsets.all(8),
                    focusColor: Colors.purple,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                      borderRadius: BorderRadius.circular(5),

                    ),
                    suffixIcon:
                    InkWell(
                      onTap: (){
                        setState(() {
                         if(passVisi== true)
                           passVisi=false;
                         else
                           passVisi=true;
                        });
                      },
                      child: Icon(Icons.attach_email,
                        color: Colors.purple,),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple
                  ),
                    onPressed: (){
                    setState(() {
                      if(emailController.text== _email) {
                        if (passController.text == _password) {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                        }
                      }
                    });
                    },
                    child: Text("Log in",style: TextStyle(fontSize: 20),)
    ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
