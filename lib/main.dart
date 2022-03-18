import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playaudio(int num)
  {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Container bellui({int num , Color colors})
  {
    return Container(
      height: 117,
      child: FlatButton(
        //padding: EdgeInsets.zero,
          child: Text("Click me"),
          onPressed: ()
          {
            playaudio(num);

          }
      ),
      color: colors,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              //Color = Colors.blue,
              bellui(num: 1 , colors: Colors.red ),
              bellui(num: 2 , colors: Colors.orange ),
              bellui(num: 3 , colors: Colors.yellow ),
              bellui(num: 4 , colors: Colors.green ),
              bellui(num: 5 , colors: Colors.teal ),
              bellui(num: 6 , colors: Colors.blue ),
              bellui(num: 7 , colors: Colors.indigo ),


            ],
          ),
      ),
    ),);
  }
}

//
