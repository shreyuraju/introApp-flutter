//@dart=2.9;
import 'thankYou.dart';
import 'package:flutter/material.dart';
class skills extends StatelessWidget {
  const skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildText() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        RichText(
          text:TextSpan(
            children: [
              TextSpan(
                text: "Android Development (JAVA) -",
                style: new TextStyle(color: Colors.black, fontSize: 25),
              ),
              TextSpan(
                text: "Excelent",
                style: new TextStyle(color: Colors.blue, fontSize: 27),
              ),
            ],
          ),
        ),
        RichText(
          text:TextSpan(
            children: [
              TextSpan(
                text: "Flutter -",
                style: new TextStyle(color: Colors.black, fontSize: 25),
              ),
              TextSpan(
                text: "Good",
                style: new TextStyle(color: Colors.blue, fontSize: 27),
              ),
            ],
          ),
        ),
        RichText(
          text:TextSpan(
            children: [
              TextSpan(
                text: "Web Development -",
                style: new TextStyle(color: Colors.black, fontSize: 25),
              ),
              TextSpan(
                text: "Excelent",
                style: new TextStyle(color: Colors.blue, fontSize: 27),
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Skills"),
        actions: [IconButton(icon: const Icon(Icons.arrow_forward), onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const thankyou())
          );
        },)],
      ),
      body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildText(),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
