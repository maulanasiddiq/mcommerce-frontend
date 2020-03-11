import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: History(),
    ));

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> with SingleTickerProviderStateMixin {
  List<int> belumBayarList = List();

  @override
  void initState() {
    super.initState();
    for (int i = 1; i < 5; i++) {
      belumBayarList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.green, Colors.lightGreen])),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
        automaticallyImplyLeading: false,
        title: Text(
          "Pesanan Saya",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child: TabBar(
                isScrollable: true,
                labelColor: Colors.green,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Tab(
                    text: "Belum bayar",
                  ),
                  Tab(
                    text: "Disiapkan",
                  ),
                  Tab(
                    text: "Dikirim",
                  ),
                  Tab(
                    text: "Selesai",
                  ),
                  Tab(
                    text: "Dinilai",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: ListView.builder(
                        itemCount: belumBayarList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, right: 10),
                            child: Material(
                              borderRadius: BorderRadius.circular(5),
                              elevation: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.asset(
                                                "assets/images/sayur.jpg",
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Sayuran hijau",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Column(children: <Widget>[
                                                    Text("x 100kg")
                                                  ]),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: <Widget>[
                                                    Text("Rp20.000")
                                                  ]),
                                                ],
                                              ),
                                            ]),
                                        Column()
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                "assets/images/ava.jpeg",
                                                height: 20,
                                                width: 20,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Maulana",
                                              style: TextStyle(
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(children: <Widget>[
                                          Text("Total Pesanan:"),
                                          Text(
                                            "Rp2.000.000",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      child: Text("Disiapkan"),
                    ),
                    Container(
                      child: Text("Disiapkan"),
                    ),
                    Container(
                      child: Text("Disiapkan"),
                    ),
                    Container(
                      child: Text("Disiapkan"),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
