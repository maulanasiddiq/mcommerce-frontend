import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcommerce/screen/register/components/rounded_input_field_nama.dart';
import 'package:mcommerce/screen/register/components/rounded_input_field_email.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/images/register.svg",
                height: size.height * 0.3,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputFieldNama(
                icon: Icons.person,
                hintText: "Nama Anda",
                onChaged: (value) {},
              ),
              RoundedInputFieldEmail(
                icon: Icons.email,
                hintText: "Email Anda",
                onChanged: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
