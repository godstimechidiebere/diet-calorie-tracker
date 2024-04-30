import 'package:dietonyi/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

import 'package:dietonyi/screens/getting_started_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: OnboardingScreen() //GettingStartedScreen(),
        );
  }
}
