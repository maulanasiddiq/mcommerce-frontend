import 'package:flutter/material.dart';
import 'package:mcommerce/screen/menu/history.dart';
import 'package:mcommerce/screen/menu/home.dart';
import 'package:mcommerce/screen/menu/notif.dart';
import 'package:mcommerce/screen/menu/profile.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Home(),
            History(),
            Notif(),
            Profile(),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelColor: Colors.teal[400],
          unselectedLabelColor: Colors.grey,
          tabs: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Icon(Icons.home),
                  Text(
                    "Beranda",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Icon(Icons.history),
                  Text(
                    "Riwayat",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Icon(Icons.notifications),
                  Text(
                    "Pemberitahuan",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Icon(Icons.person),
                  Text(
                    "Saya",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
