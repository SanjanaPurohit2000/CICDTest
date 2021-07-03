import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded makeKey({Color color ,int num}){
    return Expanded(
      child: FlatButton(
          color: color,
        onPressed: (){

          final player = AudioCache();
          player.play('note$num.wav');
        },),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            
            makeKey(color: Colors.red, num:1),
              makeKey(color: Colors.orange, num:2),
              makeKey(color: Colors.yellow, num:3),
              makeKey(color: Colors.green, num:4),
              makeKey(color: Colors.teal, num:5),
              makeKey(color: Colors.blue, num:6),
              makeKey(color: Colors.purple, num:7),

            ],

          ),
        ),
      ),
    );
  }
}
