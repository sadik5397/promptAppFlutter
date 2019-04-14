import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

void main() {
  runApp(MaterialApp(
    title: "PromteApp",
    home: ScreenOne(), //Class Name Of The Other Dart File
  ));
}

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 45,
                ),
                Text(
                  "Hello User",
                  textAlign: TextAlign.center,
                  style: bigData(),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, top: 10),
                          child: promptCard(193, "Todays\nSMS Count"),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: primary,
                                blurRadius: 15,
                                spreadRadius: -8,
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                          child: IconButton(
                              icon: Icon(
                                Icons.check,
                                color: primary,
                              ),
                              onPressed: () {}),
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return SecondScreen();
                          },
                        ),
                      );
                    }),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                    child: promptCard(399, "Total\nSMS Count"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return SecondScreen();
                          },
                        ),
                      );
                    }),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "LICENCE DEMO",
                  textAlign: TextAlign.center,
                  style: smallTextR(),
                ),
                Text(
                  "Write to us",
                  textAlign: TextAlign.center,
                  style: smallTextB(),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: primary,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primary,
                              ),
                            ),
                            Container(
                              height: 47,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade50,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: primary,
                                blurRadius: 15,
                                spreadRadius: -5,
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                          child: Icon(
                            Icons.network_check,
                            color: Colors.white,
                          ),
                          backgroundColor: primary,
                          radius: 25,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.settings,
                      color: primary,
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Select Template",
                textAlign: TextAlign.center,
                style: semiBigText(),
              ),
              SizedBox(
                height: 30,
              ),
              shimmer(),
              SizedBox(
                height: 12,
              ),
              shimmer(),
              SizedBox(
                height: 12,
              ),
              shimmer(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "AUTO SEND",
                    style: mediumText(),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  switchOn()
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: switchLine(),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return new ThirdScreen();
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey.shade50,
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 25),
                        height: 300,
                        child: FlareActor("assets/cat.flr",
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                            animation: "Rounding"),
                      ),
                      Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: semiBigText(),
                      ),
                    ],
                  ),
                  textField("Enter Name"),
                ],
              ),
              textField("Mobile Number"),
              textField("Email ID"),
              textField("License Key"),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: InkWell(
                  child: bigButton("Sign Up"),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ScreenOne();
                    }));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Global Variables
Color primary = Colors.redAccent;

//Text Field
Container textField(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    alignment: Alignment.center,
    height: 60,
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        decoration:
            InputDecoration(border: InputBorder.none, labelText: '$text'),
      ),
    ),
  );
}

//Card Constructor
Card promptCard(int num, String text) {
  return Card(
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 80,
          width: 200,
          color: primary,
          child: Text("$num", textAlign: TextAlign.center, style: bigDigit()),
        ),
        Container(
          alignment: Alignment.center,
          height: 80,
          width: 200,
          color: Colors.white,
          child:
              Text("$text", textAlign: TextAlign.center, style: mediumText()),
        ),
      ],
    ),
    elevation: 2,
  );
}

//ShimmerBox
Stack shimmer() {
  return Stack(
    alignment: Alignment.centerLeft,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(left: 20.0),
        alignment: Alignment.center,
        height: 120,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            shimmerLine(210),
            SizedBox(
              height: 10,
            ),
            shimmerLine(140),
            SizedBox(
              height: 10,
            ),
            shimmerLine(90),
          ],
        ),
      ),
      CircleAvatar(
        child: Icon(
          Icons.check,
          color: Colors.white,
        ),
        radius: 22,
        backgroundColor: primary,
      )
    ],
  );
}

Container shimmerLine(double width) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(10)),
    height: 16,
    width: width,
  );
}

//Switch
Stack switchOn() {
  return Stack(
    alignment: Alignment.centerLeft,
    children: <Widget>[
      Container(
        height: 30,
        width: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: primary, width: 2)),
      ),
      Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 35,
            width: 50,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: Colors.white, width: 3),
              boxShadow: [
                BoxShadow(
                  offset: (Offset(0, 7)),
                  color: primary,
                  blurRadius: 15,
                  spreadRadius: -6,
                )
              ],
            ),
          ),
          Text(
            "ON",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          )
        ],
      )
    ],
  );
}

//SwitchLine
Row switchLine() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 50,
        width: 130,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: primary, width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
        child: Text(
          "Ignore Data",
          style: switchText(),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 50,
        width: 130,
        decoration: BoxDecoration(
            color: primary,
            border: Border.all(color: primary, width: 2),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
        child: Text(
          "Save",
          style: switchTextReverse(),
        ),
      ),
    ],
  );
}

//Big Button
Container bigButton(String text) {
  return Container(
    alignment: Alignment.center,
    height: 50,
    decoration: BoxDecoration(
        color: primary, borderRadius: BorderRadius.all(Radius.circular(5))),
    child: Text(
      "$text",
      style: switchTextReverse(),
    ),
  );
}

//TextStyle Constructor
TextStyle bigData() {
  return TextStyle(
    color: primary,
    fontSize: 40,
    fontWeight: FontWeight.w300,
  );
}

TextStyle bigDigit() {
  return TextStyle(
    color: Colors.white,
    fontSize: 50,
    fontWeight: FontWeight.w300,
  );
}

TextStyle mediumText() {
  return TextStyle(
    color: primary,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
}

TextStyle switchText() {
  return TextStyle(
    color: primary,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}

TextStyle switchTextReverse() {
  return TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
}

TextStyle semiBigText() {
  return TextStyle(
    color: primary,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
}

TextStyle smallTextB() {
  return TextStyle(
    color: primary,
    fontSize: 15,
    fontWeight: FontWeight.w800,
  );
}

TextStyle smallTextR() {
  return TextStyle(
    color: primary,
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );
}