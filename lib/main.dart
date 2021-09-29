import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text('Matching Photos'),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePage(),
    ),
  ));
}

class ImagePage extends StatefulWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftimagenumber = 1;
  int rightimagenumber = 2;

  void changeimage() {
    leftimagenumber = Random().nextInt(8) + 1;
    rightimagenumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftimagenumber == rightimagenumber
              ? 'Bravoooo'
              : 'Oops, TRy Again',
          style: TextStyle(fontSize: 42, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/image-$leftimagenumber.png'),
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/image-$rightimagenumber.png'),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Text('Programmed By: Raad Kasem',
          style: TextStyle(color: Colors.white,
          fontSize: 20,
         fontStyle: FontStyle.italic),),
        )
      ],
    );
  }
}
