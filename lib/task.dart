import 'package:flutter/material.dart';
import 'package:mh_app/taskitem.dart';
import 'package:mh_app/main.dart';

class Task extends StatelessWidget {

  final Task_it Tas;
  final onChanged;

  const Task({super.key, required this.Tas, required this.onChanged});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 65, 102, 158),
        borderRadius: BorderRadius.circular(20)
      ),
      
      height: (MediaQuery.of(context).size.height/4)+30,
      child: Padding(
        padding: EdgeInsets.all(4),
          child:Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height/4-30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Tas.path!.toString(),),fit: BoxFit.cover
                    ),
                  borderRadius: BorderRadius.circular(30),
                ),
                
              ),
              Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Text(Tas.name!,style: TextStyle(
                        fontSize: 21,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){

                    onChanged(Tas);              
                  }, icon: Tas.isdone? Icon(Icons.check_box,color: Colors.white,  ) : Icon(Icons.check_box_outline_blank,color: Colors.white,)),
                  ],
                  ),
                 
                ),

              
            ],
          ) ,
          ),
    );
  }
}