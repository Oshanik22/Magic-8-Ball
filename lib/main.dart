import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
void main() => runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Magic 8 ball',
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: MagicEight(),
        backgroundColor: Colors.blueGrey[600],
      ),
    ),
    );
class MagicEight extends StatefulWidget {
  @override
  _MagicEightState createState() => _MagicEightState();
}

class _MagicEightState extends State<MagicEight> {
  @override

  int Image_num = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: [
          Expanded(
            child: FlatButton(

              onPressed: (){
                setState(() {
                  Image_num = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$Image_num.png'),
            )
          )
        ],
      ),
    );
  }
}

