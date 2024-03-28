import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  void signout()async{
    showDialog(context:  context, builder: (context){
      return Center(
        child: CircularProgressIndicator(),
      );
    });
    FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GestureDetector(child: Center(child: Text("Welcome user ")),
      onTap: signout,),
      
    );
  }
}