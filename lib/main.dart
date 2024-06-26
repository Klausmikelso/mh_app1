
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:mh_app/firebase_options.dart';
import 'package:mh_app/pages/Auth_page.dart';
import 'package:mh_app/pages/chat_page.dart';
import 'package:mh_app/pages/login.dart';
import 'package:mh_app/pages/signup.dart';
import 'package:mh_app/questions.dart';
import 'package:mh_app/pages/setting.dart';
import 'package:mh_app/taskitem.dart';
import '../task.dart';
import '../questions.dart';
import 'package:firebase_auth/firebase_auth.dart';

void  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
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
      //pink:fromARGB(255, 254, 65, 124)
      // skin:fromARGB(255, 254, 202, 213)
      // blue:fromARGB(255, 65, 102, 158)
      // rgba(26,60,115,255)
      home: new AuthUser(),
      routes: <String,WidgetBuilder> {
        '/Q1' : (BuildContext context) => new Q1(),
        '/Q2' : (BuildContext context) => new Q2(),
        '/Q3' : (BuildContext context) => new Q3(),
        
        '/H' : (BuildContext context) => new Home(),
        '/S' : (BuildContext context) => new setting(),
        '/log' : (BuildContext context) => new LoginPage(),
        '/sin' : (BuildContext context) => new SingnUpPage(),
        '/aut' : (BuildContext context) => new AuthUser(),

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
  
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          
          toolbarHeight: 120,
          
          backgroundColor: Color.fromARGB(255, 254, 65, 124),
          flexibleSpace: Container(
           
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
              
                children: [
                  SizedBox(height: 20,),
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TabBar(
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
                      ),
                  )
              ],),
            ),
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
            color:Color.fromARGB(255, 254, 202, 213),
          ),
          Container(
           alignment: Alignment.center,
           child: GestureDetector(
              onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatPage())
            );
              },
              child: Text("chat page"),)
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