import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/services.dart';

void main() {
  runApp( MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title:const Center(child:Text('Dicee'),)  ,
        backgroundColor: Colors.red,
      ), body:  DicePage(),),),);
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn=1;
  int rdn=1;
  void changeDice(){
    setState(() {
      ldn=Random().nextInt(6)+1;
      rdn=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(child:  Row(
      children: [
        Expanded(child:
        TextButton(onPressed: () {
        changeDice();
        },
            child: Image.asset('images/img$ldn.jpg'))
        ),
        Expanded(child:
        TextButton(onPressed: () {
        changeDice();
        },
            child: Image.asset('images/img$rdn.jpg'))
        )
      ],
    ),);
  }
}





