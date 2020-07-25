import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcommerce/components/rounded_button.dart';
import 'package:mcommerce/screen/login/components/rounded_input_field.dart';
import 'package:mcommerce/screen/login/components/rounded_password_field.dart';
import 'package:mcommerce/screen/login/components/sudah_punya_akun_cek.dart';

class Login extends StatelessWidget {
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
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                "assets/images/login.svg",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputField(
                hintText: "Email Anda",
                onChanged: (value) {},
              ),
              RoundedPasswordField(
                onChaged: (value) {},
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {},
              ),
              SudahPunyaAkunCek(
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
