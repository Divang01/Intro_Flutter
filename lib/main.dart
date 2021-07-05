import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intro/MyIcon.dart';
import 'package:url_launcher/url_launcher.dart';

_makingPhoneCall() async {
  const url = 'tel:7217795494';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  'Images/Divang.png',
                  alignment: Alignment.topCenter,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Divang Gautam",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),

                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.blueGrey,
                  ),
                  onTap: () => _makingPhoneCall(),
                  title: Text(
                    "Call Me",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 25
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                  ),
                  onTap: () => launch("mailto:divanggautam01@gmail.com?Subject=Hello"),
                  title: Text(
                    "Mail",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 25
                ),
                child: ListTile(
                  leading: Icon(MyFlutterApp.linkedin),
                  onTap: () => launch("https://www.linkedin.com/in/divang-gautam-22ab57195/"),
                  title: Text(
                    "LinkedIn",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
