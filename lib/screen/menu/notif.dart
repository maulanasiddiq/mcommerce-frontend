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
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.green, Colors.lightGreen])),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "Notifikasi",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Material(
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: <Widget>[
            Text("Halo"),
          ],
        ),
      ),
    );
  }
}