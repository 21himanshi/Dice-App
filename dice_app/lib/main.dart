import 'dart:math';
import 'package:flutter/material.dart';



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
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int left=1;
  int right=1;

  void dicee()
  {
    setState(() {
      left=Random().nextInt(6)+1;
      right=Random().nextInt(6)+1;//+1 because the random function prints the value between 0-5 for max value 6
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
          children: [
            Expanded(
              child:
              TextButton(

                onPressed: () {
                  dicee();
                },
                  child: Image.asset('images/dice$left.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  dicee();
                },
                child: Image.asset('images/dice$right.png'),
              ),
            ),
          ]
      ),
    );
  }
}
