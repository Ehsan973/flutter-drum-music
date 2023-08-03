import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//
void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: _getBody(),
      ),
    );
  }
}

Widget _getBody() {
  return SafeArea(
    child: DecoratedBox(
      position: DecorationPosition.background,
      decoration: BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(
          image: AssetImage('images/drum.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: _getFormatedBody(),
    ),
  );
}

Widget _getFormatedBody() {
  return Center(
    child: Column(
      children: [
        _getRow('h1', 'h2'),
        _getRow('c1', 'c2'),
        _getRow('k1', 'k2'),
      ],
    ),
  );
}

Widget _getRow(String file_name1, String file_name2) {
  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () async {
              playSound(file_name1);
            },
            child: Text(""),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              playSound(file_name2);
            },
            child: Text(""),
          ),
        ),
      ],
    ),
  );
}

playSound(String file_name) async {
  var player = AudioPlayer();
  await player.play(AssetSource("${file_name}.wav"));
}
