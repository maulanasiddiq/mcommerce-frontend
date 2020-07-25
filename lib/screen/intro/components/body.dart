import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcommerce/components/rounded_button.dart';
import 'package:mcommerce/screen/login/login.dart';
import 'package:mcommerce/screen/register/register.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SELAMAT DATANG",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            SvgPicture.asset(
              "assets/images/intro.svg",
              height: size.height * 0.2,
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
            ),
            RoundedButton(
              text: "SIGNUP ",
              color: Colors.green[100],
              textColor: Colors.black,
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Register();
                  }
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
