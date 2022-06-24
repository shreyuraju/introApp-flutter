//@dart=2.9;
import 'package:android_app_development_april_major_project/profile.dart';
import 'package:android_app_development_april_major_project/userdata.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class thankyou extends StatelessWidget {
  const thankyou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const profile = userdata.myUser;
    String phone = profile.phone, linkedinlink = profile.linkedinlink;
    String email = profile.email, githublink = profile.githublink;

    Widget buildPhone(Profile profile) => Column(
     // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text:TextSpan(
            children: [
              new TextSpan(
                text: "Phone: ",
                style: new TextStyle(color: Colors.black, fontSize: 25),
              ),
              WidgetSpan(
                child: Icon(Icons.phone, size: 35, color: Colors.blue,),
              ),
              TextSpan(
                text: profile.phone,
                style: new TextStyle(color: Colors.blue, fontSize: 25),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { launch('tel://$phone');},
              ),
            ],
          ),
        ),
      ],
    );

    Widget buildEmail(Profile profile) => Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text:TextSpan(
            children: [
              new TextSpan(
                text: "E-mail: ",
                style: new TextStyle(color: Colors.black, fontSize: 25),
              ),
              WidgetSpan(
                child: Icon(Icons.mail, size: 35, color: Colors.blue,),
              ),
              TextSpan(
                text: email,
                style: new TextStyle(color: Colors.blue, fontSize: 25),
                recognizer: new TapGestureRecognizer()
                  ..onTap = () { launch('mailto:$email');},
              ),
            ],
          ),
        ),
      ],
    );

    Widget buildLinkedIn(Profile profile) => Column(
     //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text:TextSpan(
              children: [
                new TextSpan(
                  text: "LinkedIn: ",
                  style: new TextStyle(color: Colors.black, fontSize: 25),
                ),
                WidgetSpan(
                  child: Icon(Icons.link, size: 35, color: Colors.blue,),
                ),
                TextSpan(
                  text: profile.linkedinid,
                  style: new TextStyle(color: Colors.blue, fontSize: 25),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = () { launch('$linkedinlink');},
                ),
              ],
            ),
        ),
      ],
    );

    Widget buildGitHub(Profile profile) => Column(
    //  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text:TextSpan(
            children: [
              new TextSpan(
                text: "GitHub: ",
                style: new TextStyle(color: Colors.black, fontSize: 25),
              ),
              WidgetSpan(
                child: Icon(Icons.link, size: 35, color: Colors.blue,),
              ),
              TextSpan(
                text: profile.githubid,
                style: new TextStyle(color: Colors.blue, fontSize: 25),
                recognizer: new TapGestureRecognizer()
                ..onTap = () { launch('$githublink');},
              ),
            ],
          ),
        ),
      ],
    );

    Widget buildText() => Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "Thank You",
          style: TextStyle(
            color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 45
          ),
        ),
        Text(
          "\nGet in Touch",
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.deepOrangeAccent,
              fontWeight: FontWeight.bold,
              fontSize: 28
          ),

        ),
      ],
    );



    return Scaffold(
      appBar: AppBar(
        title: Text('Thank You'),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                buildText(),
                buildPhone(profile),
                buildEmail(profile),
                buildLinkedIn(profile),
                buildGitHub(profile),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
