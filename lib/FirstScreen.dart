import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:stulo_new_version/widgets.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'FourthScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      home: FirstScreen(),
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third' : (context) => ThirdScreen(),
        '/fourth' : (context) => FourthScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: mainColor, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
                  child: DelayedDisplay(
                    delay: Duration(seconds: 1),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                                  child: GestureDetector(
                            onTap: () {
                                  Navigator.pushNamed(context, '/second');
                            },
                          child: Image.asset('assets/logo.jpg'),
              ),
                      ),
                    ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
