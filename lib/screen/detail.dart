import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Sayuran Hijau",
                    style: TextStyle(color: Colors.white),
                  ),
                  background: Image.asset("assets/images/sayur.jpg", fit: BoxFit.cover,)
                  ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
