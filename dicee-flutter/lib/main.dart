import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
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

class  _DicePageState extends State<DicePage> {
  @override
  int leftdice=1;
  int rightdice=1;
  Widget build(BuildContext context) {

    return  Center(
        child: Row(children: [
          Expanded(
            child: FlatButton( onPressed: (){
              setState(() {
                leftdice= Random().nextInt(6)+1;//1-6
                rightdice=Random().nextInt(6)+1;
                print('dicenum$leftdice');
              });

            },
              child: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftdice= Random().nextInt(6)+1;//1-6
                  rightdice=Random().nextInt(6)+1;
                });
                print('right dice $rightdice');
              },
              child: Image.asset('images/dice$rightdice.png'),
            ),
          ),
        ]
        )
    );
  }

}



