import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Notif(),
));

class Notif extends StatefulWidget {
  @override
  _NotifState createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Notification"),
      ),
      
    );
  }
}