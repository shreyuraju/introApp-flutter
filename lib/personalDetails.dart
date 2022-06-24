//@dart=2.9;
import 'package:android_app_development_april_major_project/profile.dart';
import 'package:android_app_development_april_major_project/userdata.dart';
import 'package:flutter/material.dart';
import 'skills.dart';
class personaldetails extends StatelessWidget {
  const personaldetails({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    
    const profile = userdata.myUser;

    Widget buildName(Profile user) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name: ${user.name}",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36
            ),
          ),
          Text(
            "Age: ${user.age}",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 36
            ),
          ),
          Text(
            "DOB: ${user.dob}",
            style: const TextStyle(
                color: Colors.black,
                fontSize: 36
            ),
          ),
          Text(
            "Hobbies: ${user.hobbies}",
            style: const TextStyle(
                color: Colors.black,
                fontSize: 30
            ),
          )
        ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Details"),
        actions: [IconButton(icon: const Icon(Icons.arrow_forward), onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context)=>const skills())
          );
        },)],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileWidget(
             imagePath: profile.imgPath, onClicked: () {  },
          ),
          buildName(profile),


        ],
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  const ProfileWidget({Key? key, required this.imagePath, required this.onClicked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return Container(
      margin: const EdgeInsets.all(5.0),
      child :Stack(
        alignment: Alignment.center,
          children:[
            buildImage(),
          ]
      ),
    );
  }
  Widget buildImage() {
    final image = AssetImage(imagePath);
    return ClipRect(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 240,
          height: 240,
          child: InkWell(onTap: onClicked,),
        ),
      ),
    );
  }
}

