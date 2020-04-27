import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int diceNumberLeft = 1;
  int diceNumberRight = 1;

  void throwDice() {
    setState(() {
      diceNumberLeft = Random().nextInt(6) + 1;
      diceNumberRight = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                throwDice();
              },
              child: Image.asset('images/dice${diceNumberLeft}.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                throwDice();
              },
              child: Image.asset('images/dice${diceNumberRight}.png'),
            ),
          )
        ],
      ),
    );
  }
}
