import 'package:flutter/material.dart';
import 'package:project1/calculator.dart';
import 'package:project1/ecom.dart';
import 'package:project1/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("MiniHackathon")),
      body: Home(),
      
    ));
  }
}


class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
              color: Colors.amber,
              child: Center(
                  child: Text(
                "Jawan-Pakistan",
                style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
            )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Todo()));
              },
              child: ListTile(
                title: Text("ToDo App"),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculator()));
              },
              child: ListTile(
                title: Text("Calculator"),
              ),
            ),GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Ecom()));
              },
              child: ListTile(
                title: Text("E-Com UI"),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children : [ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Todo()));
              },
              child: Text("Todo App")),

              SizedBox(height: 10,),

              ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Calculator()));
              },
              child: Text("Calculator")),

              SizedBox(height: 10,),

              ElevatedButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Ecom()));
              },
              child: Text("E-Com UI")),
          ]),
      ),
      
    );
  }
}


