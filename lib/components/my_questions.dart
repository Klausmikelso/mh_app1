import 'package:flutter/material.dart';

class questions extends StatelessWidget {
  final String? qes;
  final String? label;
  final TextInputType? inputType;
  final TextEditingController con;
  final String? nav;
  const questions(
    {
      super.key,
      required this.con,
      required this.inputType,
      required this.qes,
      required this.label,
      required this.nav
      }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue,Colors.pink])
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(qes!,
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 150,),
              TextFormField(
                controller: con,
                keyboardType: inputType,
                decoration: InputDecoration(
                  label: Text(label! ),
                  fillColor: Colors.white,
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                ),
                
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, nav!);
              }, child: Text("NEXT"))
            ],
          ),
        ),
      ),
    );
  }
}