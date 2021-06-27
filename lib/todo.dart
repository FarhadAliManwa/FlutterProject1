import 'package:flutter/material.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

var output = "";
List<dynamic> lst = [];

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("To-Do App"),
      ),
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (context, index) {
          return Container(
              height: 60,
              color: Colors.amberAccent,
              margin: EdgeInsets.only(top: 20),
              child: ListTile(
                title: Text("${lst[index]}"),
                trailing: Container(
                  width: 50,
                  child: Row(children: [
                    GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Edit item"),
                                  content: TextField(
                                    onChanged: (value) {
                                      output = value;
                                    },
                                  ),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            lst.replaceRange(
                                                index, index + 1, {output});
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: Text("Edit"))
                                  ],
                                );
                              });
                        },
                        child: Icon(Icons.edit)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            lst.removeAt(index);
                          });
                        },
                        child: Icon(Icons.delete)),
                  ]),
                ),
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Add Item"),
                    content: TextField(
                      onChanged: (value) {
                        output = value;
                      },
                    ),
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              lst.add(output);
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text("Add"))
                    ],
                  );
                });
          },
          child: Icon(
            Icons.add,
          )),
    );
    return scaffold;
  }
}
