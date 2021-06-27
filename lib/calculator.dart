import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  var result = "";

  output() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  clear() {
    setState(() {
      result = "";
    });
  }

  Widget btn(var text) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          result = result + text;
        });
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(
        primary: Colors.white30,
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 20,
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 60,
                child: Text(
                  result,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    clear();
                  },
                  child: Text("C"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white30,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 20,
                    ),
                  ),
                ),
                btn("^"),
                btn("/"),
                btn("*"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("7"),
                btn("8"),
                btn("9"),
                btn("-"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("4"),
                btn("5"),
                btn("6"),
                btn("+"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("1"),
                btn("2"),
                btn("3"),
                btn("("),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                btn("."),
                btn("0"),
                ElevatedButton(
                  onPressed: () {
                    output();
                  },
                  child: Text("="),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white30,
                    padding: EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 20,
                    ),
                  ),
                ),
                btn(")"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
