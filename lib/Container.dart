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
        actions: <Widget>[
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu,color: Colors.white),
          onPressed: (){},
        ),
      ),
      body: Container(
        // //Menambahkan Width dan height
        // width: 20,
        // height: 20,
        // //Menambahkan padding dan margin
        // padding: const EdgeInsets.all(10),
        // margin: const EdgeInsets.all(10),
        // //Menambahkan dekorasi pada container
        decoration: BoxDecoration(
          color: Colors.red,
          //shape: BoxShape.circle //Membuat shape
          // boxShadow: const[
          //   BoxShadow(
          //     color: Colors.black,
          //     offset: Offset(3, 6),
          //     blurRadius: 10,
          //   )
          // ] //Membuat shadow
          //Membuat Border
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}