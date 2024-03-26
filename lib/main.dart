import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:mh_app/questions.dart';
import 'package:mh_app/setting.dart';
import 'package:mh_app/taskitem.dart';
import '../task.dart';
import '../questions.dart';

void main(){
  runApp(Myapp1());
}
class Myapp1 extends StatelessWidget {
  const Myapp1({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(

      home: new Q1(),
      routes: <String,WidgetBuilder> {
        '/Q1' : (BuildContext context) => new Q1(),
        '/Q2' : (BuildContext context) => new Q2(),
        '/Q3' : (BuildContext context) => new Q3(),
        '/Q4' : (BuildContext context) => new Q4(),
        '/Q5' : (BuildContext context) => new Q5(),
        '/H' : (BuildContext context) => new Home(),
        '/S' : (BuildContext context) => new setting(),
      

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TaskList=Task_it.Task_list();
  Container Task_fun (){
    return Container(
      height: MediaQuery.of(context).size.height/3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),

      ),
      alignment: Alignment.bottomLeft,
      child: Row(children: [
        Text("Check if you completed the task"),
      ],),

    );
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          toolbarHeight: 120,
          
          backgroundColor: Color.fromARGB(255, 252, 143, 0),
          flexibleSpace: Container(
           
            child:  Column(

              children: [
                
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    IconButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const setting()),
  );
                    }, icon: Icon(Icons.menu)),
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text("Your Companion",
      
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
      
                  ],
                ),
                Padding(padding: EdgeInsets.all(10)),
                TabBar(
                  splashBorderRadius: BorderRadius.zero,
                  indicator: BoxDecoration(
                    
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelColor: (Colors.white),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  unselectedLabelColor: Colors.black,

                  tabs: [
                    Tab(child:Text("Tasks")),
                    Tab(child:Text("Dashbord"))
                      
                    ]
                  )
            ],),
          ),
        ),
        body: TabBarView(children: [
          
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  for (Task_it i in TaskList)
                  Task(Tas: i,onChanged: handle_task,),
              
                  
                  ],
                
              ),
            ),
            color: Colors.yellow,
          ),
          Container(
            color: Colors.black,
          )
          
  
        ],),
      ),
    );
  }
  void handle_task(Task_it vari){
    setState(() {
      vari.isdone=!vari.isdone;
    });
  }
}
