import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: DiceApp(),
    ),
  ),);
}

class DiceApp extends StatefulWidget {
  @override

  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  void changeDice() {
    setState(() {
      leftDiceChange = Random().nextInt(6) + 1;
      rightDiceChange = Random().nextInt(6) + 1;
    });
  }

  int leftDiceChange = 1;
  int rightDiceChange = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: <Widget> [
              Expanded(
                child:  FlatButton(
                  onPressed: (){
                    changeDice();
                  },
                  child: Image.asset('images/dice$leftDiceChange.png', fit:BoxFit.contain ),
                ),
              ),

              Expanded(
                child: FlatButton(
                  onPressed: (){
                    changeDice();
                  },
                  child: Image.asset('images/dice$rightDiceChange.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
            width: 200.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: <Widget> [
                Expanded(
                  child: Text(
                    'Dev Habeeb',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      color: Colors.white70,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 5.0,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}