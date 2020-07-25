import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mcommerce/screen/login/components/sudah_punya_akun_cek.dart';
import 'package:mcommerce/screen/login/login.dart';
import 'package:mcommerce/screen/register/components/rounded_button_sign_up.dart';
import 'package:mcommerce/screen/register/components/rounded_input_field_hp.dart';
import 'package:mcommerce/screen/register/components/rounded_input_field_nama.dart';
import 'package:mcommerce/screen/register/components/rounded_input_field_email.dart';
import 'package:mcommerce/screen/register/components/rounded_input_field_ulangi_password.dart';
import 'package:mcommerce/screen/register/components/rounded_password_field.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SvgPicture.asset(
                  "assets/images/register.svg",
                  height: size.height * 0.25,
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
                ),
                RoundedInputFieldHp(
                  icon: Icons.smartphone,
                  hintText: "Nomor Handphone",
                  onChanged: (value) {},
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
                RoundedInputFieldUlangiPassword(
                  onChanged: (value) {},
                ),
                RoundedButtonSignUp(
                  text: "SIGN UP",
                  press: () {},
                ),
                SudahPunyaAkunCek(
                  login: false,
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
