import 'package:flutter/material.dart';
import 'package:mh_app/components/my_questions.dart';

class Q1 extends StatefulWidget {
  const Q1({super.key});

  @override
  State<Q1> createState() => _Q1State();
}

class _Q1State extends State<Q1> {
  TextEditingController _conQ1=new TextEditingController();
  TextEditingController _conQ3=new TextEditingController();
  TextEditingController _conQ4=new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return questions(inputType: TextInputType.name,qes: "do you often feel lonley",con: _conQ1, label: "enter yes or no", nav: '/Q2');
  }
}
class Q2 extends StatefulWidget {
  const Q2({super.key});
  

  @override
  State<Q2> createState() => _Q2State();
}

class _Q2State extends State<Q2> {
  TextEditingController _conQ2=new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
   return questions(inputType: TextInputType.number,con: _conQ2, qes: "how many fens do ypu have", label: "enter", nav: '/Q3');
  }
}
class Q3 extends StatefulWidget {
  const Q3({super.key});

  @override
  State<Q3> createState() => _Q3State();
}

class _Q3State extends State<Q3> {
  final TextEditingController _conQ3= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return questions(inputType: TextInputType.name,con: _conQ3, qes: "how many hours do you sleep", label: "enter number", nav: "/H");
  }
}