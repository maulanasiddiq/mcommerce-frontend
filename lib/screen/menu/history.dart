import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: History(),
));

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("History"),
      ),
      
    );
  }
}