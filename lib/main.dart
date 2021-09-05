import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    title: 'Magic 8 Ball',
    home: Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: Magic8Ball(),
    ),
  ));
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8Ball createState() => _Magic8Ball();
}

class _Magic8Ball extends State<Magic8Ball> {
  int imageCount = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => {
          setState(() {
            imageCount = Random().nextInt(5)+1;
            print('Image Count: $imageCount');
          }),
        },
        child: Image.asset('images/ball$imageCount.png'),
      ),
    );
  }
}
