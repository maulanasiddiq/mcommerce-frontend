import 'package:flutter/material.dart';
import 'package:mcommerce/screen/menu.dart';
import 'package:mcommerce/screen/register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Text(
              "Selamat Datang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Silahkan login ke akun yang sudah didaftarkan"),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color(0xff00AFEF),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye),
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                child: ButtonTheme(
                  height: 50,
                  child: RaisedButton(
                    color: Colors.teal,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu()));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          fontFamily: ("Opensans"),
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Text("Belum punya akun?"),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text(
                  "Daftar Sekarang",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
