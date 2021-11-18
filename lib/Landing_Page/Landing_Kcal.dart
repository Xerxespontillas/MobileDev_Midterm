import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:midterm_project_3rdyear_1stsem/Onboarding/onBoarding.dart';

class Kcal extends StatefulWidget {
  @override
  State<Kcal> createState() => _KcalState();
}

class _KcalState extends State<Kcal> {
  @override
  void initState() {
    super.initState();
    _navigateNext();
  }

  _navigateNext() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => onBoarding()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/food.png"),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Color(0xFF83AF7D), BlendMode.color))),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Text("kcal",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    "ZUAMICA",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white.withOpacity(.8),
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  )
                ]))),
      ),
    );
  }
}
