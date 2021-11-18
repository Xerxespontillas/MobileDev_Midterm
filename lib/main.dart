import 'package:flutter/material.dart';
import 'package:midterm_project_3rdyear_1stsem/Landing_Page/Landing_Kcal.dart';
import 'package:midterm_project_3rdyear_1stsem/Onboarding/onBoarding.dart';
void main() {
  runApp(MaterialApp(
    title: 'KcalRoutes',
    initialRoute:'/',
    routes: {
      '/': (context) =>MyApp(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kcal',
      debugShowCheckedModeBanner: false,
      home: Kcal(),
    );
  }
  }

