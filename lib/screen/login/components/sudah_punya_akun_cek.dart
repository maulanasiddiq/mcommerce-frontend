import 'package:flutter/material.dart';

class SudahPunyaAkunCek extends StatelessWidget {
  final bool login;
  final Function press;
  const SudahPunyaAkunCek({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Belum punya akun?" : "Sudah Punya Akun?",
          style: TextStyle(color: Colors.green),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Daftar Sekarang" : "Sign In",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
