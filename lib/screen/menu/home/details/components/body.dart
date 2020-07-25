import 'package:flutter/material.dart';
import 'package:mcommerce/screen/menu/home/details/components/product_image.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ProductPoster(
                    size: size,
                    image: "assets/images/sayur.jpg",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16 / 2),
                    child: Text(
                      "Sayuran Hijau Segar Baru Panen",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                  Text(
                    "Rp25.000",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16 / 2),
                    child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                decoration: BoxDecoration(
                    color: Colors.yellow[800],
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                      label: Text(
                        "Chat Penjual",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
