import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.green, Colors.lightGreen])),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              )
            ],
            automaticallyImplyLeading: false,
            title: Text("Beranda"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0, right: 17, bottom: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(5),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Cari produk hasil bumi...",
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(Icons.search),
                        )),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  labelColor: Colors.green,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  unselectedLabelColor: Colors.grey,
                  tabs: <Widget>[
                    Tab(
                      text: "Pertanian",
                    ),
                    Tab(
                      text: "Perikanan",
                    ),
                    Tab(
                      text: "Peternakan",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      Container(
                        child: Text("Pertanian"),
                      ),
                      Container(
                        child: Text("Perikanan"),
                      ),
                      Container(
                        child: Text("Peternakan"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
