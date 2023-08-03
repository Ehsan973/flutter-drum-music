import 'package:flutter/material.dart';

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
        _getRow(),
        _getRow(),
        _getRow(),
      ],
    ),
  );
}

Widget _getRow() {
  return Expanded(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(""),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(""),
          ),
        ),
      ],
    ),
  );
}
