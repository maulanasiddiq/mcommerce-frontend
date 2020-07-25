import 'package:flutter/material.dart';
import 'package:mcommerce/screen/menu/home/components/kategori.dart';
import 'package:mcommerce/screen/menu/home/components/product_card.dart';
import 'package:mcommerce/screen/menu/home/components/search_box.dart';
import 'package:mcommerce/screen/menu/home/details/details_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          Kategori(),
          SizedBox(
            height: 16 / 2,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => ProductCard(
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsProduct(),
                                ));
                          },
                        )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
