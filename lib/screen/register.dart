import 'package:flutter/material.dart';
import 'package:mcommerce/screen/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
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
              Text(
                  "Daftar menggunakan NIK yang terdaftar di Disdukcapil Kota Tegal"),
              SizedBox(
                height: 30,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nama',
              )),
              SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              )),
              SizedBox(height: 10,),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.remove_red_eye)
                  )),
              Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                  width: double.infinity,
                  child: ButtonTheme(
                    height: 50,
                    child: RaisedButton(
                      color: Colors.teal,
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Menu()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "CEK NIK",
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
                Text("Sudah punya akun?"),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "Login Sekarang",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
