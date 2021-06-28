import 'package:flutter/material.dart';

class Ecom extends StatefulWidget {
  @override
  _EcomState createState() => _EcomState();
}

class _EcomState extends State<Ecom> {
  var lst = ["assets/1.jpg","assets/2.jpg","assets/3.jpg","assets/4.jpg","assets/5.jpg","assets/6.jpg","assets/7.jpg","assets/8.jpg","assets/9.jpg","assets/10.jpg","assets/11.jpg","assets/12.jpg","assets/13.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("E-Com UI"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(lst.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                      // color: Colors.amber,
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(image: AssetImage(lst[index]), fit: BoxFit.fill)
                    ),
                  
                );
              })),
        ));
  }
}
