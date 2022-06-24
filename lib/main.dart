//@dart=2.9;

import 'package:flutter/material.dart';
import 'personalDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildText() => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello",
            style: TextStyle(
            fontSize: 100,
            fontFamily: "Times New Roman",
            color: Colors.amberAccent,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.combine([
              TextDecoration.underline,
            ])
          ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("WelCome"),
        actions: [IconButton(icon: const Icon(Icons.arrow_forward), onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const personaldetails())
          );
        },)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildText(),
          ],
        ),
      ),
    );
    
  }
}
