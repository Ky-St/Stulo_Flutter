import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stulo_new_version/widgets.dart';

class FourthScreen extends StatefulWidget {
  @override
  _FourthScreenState createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        body: card_of_events(context),
        bottomNavigationBar: underAppBar(context),
      ),
    );
  }
}