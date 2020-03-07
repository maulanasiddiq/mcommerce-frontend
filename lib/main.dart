import 'package:flutter/material.dart';
import 'package:mcommerce/screen/login.dart';

void main() => runApp(MaterialApp(
  home: Login(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.teal[400],
    accentColor: Colors.tealAccent,
  ),
));