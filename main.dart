import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
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
  int LeftDiceNumber = 1;
  int RightDiceNumber = 2;
  void ChangeDiceFace(){
    setState((){
      LeftDiceNumber = Random().nextInt(6)+1;
      RightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
            /* child: Image(
               // width: 200.0,
              image: AssetImage('images/dice1.png'),),*/
          ),
          Expanded(
            //flex: 1,
            child: TextButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$RightDiceNumber.png'),),
            /*child: Image(
               // width: 200.0,
               image: AssetImage('images/dice1.png'),),*/
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {
  int LeftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
         children: <Widget>[
          Expanded(
            //flex: 2,
            child: TextButton(
              onPressed:(){
                print('Left button got pressed.');
    },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
           /* child: Image(
               // width: 200.0,
              image: AssetImage('images/dice1.png'),),*/
          ),
           Expanded(
             //flex: 1,
             child: TextButton(
               onPressed:(){
                   print('Right button got pressed.');
               },
                 child: Image.asset('images/dice2.png'),),
             /*child: Image(
               // width: 200.0,
               image: AssetImage('images/dice1.png'),),*/
           ),
        ],
      ),
    );
  }
}*/

