

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mh_app/components/my_button.dart';
import '../components/my_textfield.dart';

class SingnUpPage extends StatefulWidget {
  const SingnUpPage({super.key});

  @override
  State<SingnUpPage> createState() => _SingnUpPageState();
}

class _SingnUpPageState extends State<SingnUpPage> {
  TextEditingController _emailcon=TextEditingController();
  TextEditingController _paswrd=TextEditingController();
  void creatUser() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailcon.text, 
      password: _paswrd.text);
  }
  @override
  Widget build(BuildContext context) {
    return Container
    (
      decoration: BoxDecoration(
        // rgba(254,202,213,255)
        // rgba(26,60,115,255)
        // rgba(65,102,158,255)
        gradient: RadialGradient(colors: [
          Color.fromARGB(255, 254, 65, 124),
          Color.fromARGB(255, 254, 202, 213)
          ,Color.fromARGB(255, 65, 102, 158),
          Color.fromARGB(255,25,65 , 155, ),
          //Colors.black
          ],
          // begin: Alignment.topLeft,
          // end: Alignment.bottomCenter
    
          )
      ),
      //backgroundColor: Colors.blueAccent,
      child:  Stack(
        children: [

          Padding(padding: EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              // rgba(254,65,124,255)
                color: Color.fromARGB(255, 233, 110, 149),
                  ),
              ),
          ),
             Expanded(
               child: Column(
                 children: [
                  SizedBox(height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height-200) ,),
                   Container(
                      height: MediaQuery.of(context).size.height-200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // border: BoxBorder.lerp(a, b, t),
               
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                      ),
                      alignment: Alignment.center,
      
                      child: Material(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 49,),
                            MyTextField(controller: _emailcon, hintText: "Enter Email", obscureText: false),
                            SizedBox(height: 20,),
                            MyTextField(controller: _paswrd, hintText: "Enter Password", obscureText: true),
                            //Divider(indent: 10,endIndent: 10,),
                            my_button(text: 'SignIN', onTap: creatUser),
                            
                          ],
                        ),
                      ),
                    ),
                 ],
               ),
             )
            
        ],
      ),
      
    );
  }
}