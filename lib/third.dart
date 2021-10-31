import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
final _formKey=GlobalKey<FormState>();
TextEditingController emailController =TextEditingController();
TextEditingController passController =TextEditingController();
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

                    },
                    child: Text("Log in",style: TextStyle(fontSize: 20),)),
              ],
            ),
          ),
        )
      ),
    );
  }
}
