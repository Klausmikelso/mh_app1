import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Q1 extends StatefulWidget {
  const Q1({super.key});

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  Container q(String qes,){
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
              Text(qes,
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("NUMBER"),
                  fillColor: Colors.white,
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                ),
                
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, '/Q2');
              }, child: Text("NEXT"))
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return q("How many friends do you have?");

  }
}


class Q2 extends StatefulWidget {
  const Q2({super.key});

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {

   Container q(String qes,){
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
              Text(qes,
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Enter"),
                  fillColor: Colors.white,
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                ),
                
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, '/Q3');
              }, child: Text("NEXT"))
            ],
          ),
        ),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return q("How often do you feel lonley?");
  }
}

class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
   Container q(String qes,){
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
              Text(qes,
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Enter yes or No" ),
                  fillColor: Colors.white,
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                ),
                
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, '/Q4');
              }, child: Text("NEXT"))
            ],
          ),
        ),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return q("Do you have trouble to cope with stress?");
  }
}
class Q4 extends StatefulWidget {
  const Q4({super.key});
  
  @override
  State<Q4> createState() => _Q4State();
}

class _Q4State extends State<Q4> {
  Container q(String qes,){
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
              Text(qes,
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200,),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Enter" ),
                  fillColor: Colors.white,
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                ),
                
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, '/Q5');
              }, child: Text("NEXT"))
            ],
          ),
        ),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return q("How often do you go outside?");
  }
}
class Q5 extends StatefulWidget {
  const Q5({super.key});

  @override
  State<Q5> createState() => _Q5State();
}

class _Q5State extends State<Q5> {
  final Texte = TextEditingController();
  Container q(String qes,){
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
              Text(qes,
              style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200,),
              TextFormField(
                controller: Texte,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text("Enter" ),
                  fillColor: Colors.white,
                  border:OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                  filled: true,
                  
                ),
                
                
                
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.popAndPushNamed(context, '/H');
              }, child: Text("NEXT"))
            ],
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return q("Enter Your Name");
  }
}