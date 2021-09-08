import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Event.dart';

Color mainColor = Color(0xFF3EB489);

Widget appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "STULO",
            style: TextStyle(color: mainColor),
          ),
        )),
  );
}

Widget buttons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          Navigator.pushNamed(context, '/third');
                        },
                        child: Icon(
                          Icons.add_circle_outline,
                          size: 100,
                          color: mainColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        child: Icon(
                          Icons.library_books_sharp,
                          size: 100,
                          color: mainColor,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/fourth');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ])),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        child: Icon(
                          Icons.insights,
                          size: 100,
                          color: mainColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    height: 170,
                    width: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        child: Icon(
                          Icons.settings_outlined,
                          size: 100,
                          color: mainColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
            )
          ])),
        ],
      ),
    ),
  );
}

Widget underAppBar_Second_Screen(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: mainColor, width: 1)
      ),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.greenAccent,
              ),
              onPressed: () {
                Navigator.pop(context, '/first');
              }),
        ],
      ),
    ),
  );
}
Widget put_in_buttons(BuildContext context){
  final name_employer_inputcontroller = TextEditingController();
  final number_hours_inputcontroller = TextEditingController();
  final salary_hours_inputcontroller = TextEditingController();

  calculate() {
    String number_hours = number_hours_inputcontroller.text;
    String salary_hours = salary_hours_inputcontroller.text;
    String name_employer = name_employer_inputcontroller.text;
    if (name_employer != "" && number_hours != "" && salary_hours != "") {
      double number_hours_double = double.parse(number_hours);
      double salary_hours_double = double.parse(salary_hours);
      double result = number_hours_double * salary_hours_double;

      String String_obj = '{"name_employer" : "$name_employer", "number_hours" : "$number_hours", "salary_hours" : "$salary_hours ","result" : "$result"}';
      print(String_obj);
      events.add(Event(name_employer, number_hours_double, salary_hours_double, result));
      print(events[0].name_employer);
      print(events.length);
    }
    else {
      print("Keine Eingabe");
    }
  }

  return MaterialApp(
    home: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: name_employer_inputcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.account_balance, color: Colors.black,),
                    labelText: "Arbeitgeber",
                    labelStyle: TextStyle(
                      color: Colors.black
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: number_hours_inputcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.access_time, color: Colors.black),
                    labelText: "Arbeitsstunden",
                    labelStyle: TextStyle(color: Colors.black)
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: mainColor, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: salary_hours_inputcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.monetization_on, color: Colors.black,),
                    labelText: "Stundenlohn",
                    labelStyle: TextStyle(color: Colors.black)
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.library_books_sharp,
                  size: 50,
                  color: mainColor,
                ),
                onPressed: () {
                  calculate();
                  Navigator.pushNamed(context, '/fourth');
                }),
          ],
        ),
      ),
    ),
  );
}
Widget underAppBar_Third_Screen(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: mainColor, width: 1)
      ),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_outlined,
                color: mainColor,
              ),
              onPressed: () {
                Navigator.pop(context, '/second');
              }),
        ],
      ),
    ),
  );
}
Widget card_of_events(){
  return Container(
    child: ListView.builder(
        itemCount: events.length,
        padding: EdgeInsets.all(5.0),
        itemBuilder: (_, index) => Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: mainColor, width: 2),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Name: ${events[index].name_employer}\nStunden: ${events[index].number_hours}\nGehalt: ${events[index].salary_hours}\n" "Verdient: ${events[index].result}",
            style: TextStyle(fontSize: 20.0),),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.border_color,
                        color: mainColor,
                      ),
                      onPressed: () {
                      }),
                  Padding(
                    padding: const EdgeInsets.only(left: 297.0),
                    child: IconButton(
                        icon: Icon(
                          Icons.remove_circle_outlined,
                          color: mainColor,
                        ),
                        onPressed: () {
                        }),
                  ),
                ],
              )
            ],
          ),
        )),
  );
}
