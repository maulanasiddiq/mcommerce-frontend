import 'package:flutter/material.dart';
import 'package:mcommerce/screen/intro.dart';

void main() => runApp(MaterialApp(
  home: Intro(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.green,
    accentColor: Colors.lightGreen,
  ),
));