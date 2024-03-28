

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SingnUpPage extends StatefulWidget {
  const SingnUpPage({super.key});

  @override
  State<SingnUpPage> createState() => _SingnUpPageState();
}

class _SingnUpPageState extends State<SingnUpPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue,Colors.black])
      ),
      //backgroundColor: Colors.blueAccent,
      child:  Stack(
        children: [

          Padding(padding: EdgeInsets.all(10),
            child:Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              // rgba(254,65,124,255)
                color: Color.fromARGB(255, 254, 65, 124),
                  ),
              ),
          ),
             Column(
               children: [
                SizedBox(height: MediaQuery.of(context).size.height-(MediaQuery.of(context).size.height-200) ,),
                 Container(
                    height: MediaQuery.of(context).size.height-200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                    ),
                  ),
               ],
             )
            
        ],
      ),
      
    );
  }
}