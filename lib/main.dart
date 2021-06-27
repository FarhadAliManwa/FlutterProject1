import 'package:flutter/material.dart';
import 'package:project1/calculator.dart';
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
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       DrawerHeader(
      //           child: Container(
      //         color: Colors.amber,
      //         child: Center(
      //             child: Text(
      //           "Jawan-Pakistan",
      //           style: TextStyle(
      //               color: Colors.redAccent,
      //               fontWeight: FontWeight.bold,
      //               fontSize: 25),
      //         )),
      //       )),
      //       GestureDetector(
      //         onTap: () {
      //           Todo();
      //         },
      //         child: ListTile(
      //           title: Text("ToDo App"),
      //         ),
      //       ),
      //       GestureDetector(
      //         onTap: () {},
      //         child: ListTile(
      //           title: Text("Calculator"),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //       onPressed: () {
      //         Todo();
      //       },
      //       child: Text("Todo")),
      // ),
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
          ]),
      ),
      
    );
  }
}








// class Todo extends StatefulWidget {
//   @override
//   _TodoState createState() => _TodoState();
// }

// List<dynamic> lst = [];

// class _TodoState extends State<Todo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("To-Do App"),
//         ),
//         body: ListView.builder(
//             itemCount: lst.length,
//             itemBuilder: (context, index) {
//               return Container(
//                   height: 60,
//                   color: Colors.amberAccent,
//                   margin: EdgeInsets.only(top: 20),
//                   child: ListTile(
//                     title: Text("${lst[index]}"),
//                     trailing: Container(
//                       width: 50,
//                       child: Row(
//                         children: [Icon(Icons.edit), Icon(Icons.delete)],
//                       ),
//                     ),
//                   ));
//             }));
//   }
// }
