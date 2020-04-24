import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

void play(int a){
  final player = AudioCache();
  player.play('note$a.wav');
}

Expanded bbb({int b, Color c}){
  return Expanded(
    child: FlatButton(
      onPressed: (){
        play(b);
      },
      color: c,
      padding: EdgeInsets.all(0),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              bbb(b: 1,c: Colors.red),
              bbb(b: 2,c: Colors.orange),
              bbb(b: 3,c: Colors.yellow),
              bbb(b: 4,c: Colors.green),
              bbb(b: 5,c: Colors.teal),
              bbb(b: 6,c: Colors.blue),
              bbb(b: 7,c: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}