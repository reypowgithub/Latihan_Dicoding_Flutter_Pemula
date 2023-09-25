import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title : const Text('First Screen'),
      ),
      body:
      // [Membuat baris]
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: const <Widget>[
      //     Icon(Icons.share),
      //     Icon(Icons.thumb_up),
      //     Icon(Icons.thumb_down)
      //   ],
      // )
      Column(
        children: const <Widget>[
          Text(
            'Sebuah Judul',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
          Text(
              'Lorem ipsum dolor sit amet'
          )
        ],
      )
    );
  }
}