import 'package:flutter/material.dart';
import 'package:dietonyi/styles/color.dart';
import 'package:flutter/widgets.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(150, 25), 
  padding: const EdgeInsets.all(15),
  backgroundColor: purple,
  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: white),
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(50)
    ),
  ),
);