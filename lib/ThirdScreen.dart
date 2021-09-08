import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stulo_new_version/widgets.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        body: put_in_buttons(context),
        bottomNavigationBar: underAppBar(context),
      ),
    );
  }
}