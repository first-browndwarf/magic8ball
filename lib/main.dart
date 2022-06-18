import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text("Ask Me Anything"),
        ),
        body: MagicBallPage(),
      ),
    );
  }
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({Key? key}) : super(key: key);

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {

  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: (){
                  setBallNumberState();
                  print('I got clicked : $ballNumber');
                },
                child: Image.asset('images/ball$ballNumber.png')
            )
          )
        ],
      )
    );
  }

  void setBallNumberState() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
