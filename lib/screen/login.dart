import 'package:flutter/material.dart';
import 'package:mcommerce/screen/menu/home.dart';
import 'package:mcommerce/screen/register.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

   bool visible = false ;
 
  // Getting value from TextField widget.
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
 
Future<http.Response> userLogin() async{
 
  // Showing CircularProgressIndicator.
  setState(() {
  visible = true ; 
  });
 
  // Getting value from Controller
  String email = emailController.text;
  String password = passwordController.text;
 
  // SERVER LOGIN API URL
  var url = 'http://localhost:3000/auth/get/login';
 
  // Store all data with Param Name.
  var data = {"email": email, "password" : password};
 
  // Starting Web API Call.
  var response = await http.post(url, body: data);
 
  // Getting Server response into variable.
  var message = response.body;
  print(message);
  // If the Response Message is Matched.
  if(response.statusCode == 200)
  {
    print("berhasil");
    // // Hiding the CircularProgressIndicator.
    //   setState(() {
    //   visible = false; 
    //   });
 
    // // Navigate to Profile Screen & Sending Email to Next Screen.
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home())
      );
  }else{
 
    // // If Email or Password did not Matched.
    // // Hiding the CircularProgressIndicator.
    // setState(() {
    //   visible = false; 
    //   });
 
    // // Showing Alert Dialog with Response JSON Message.
    // showDialog(
    // context: context,
    // builder: (BuildContext context) {
    //   return AlertDialog(
    //     title: new Text(message),
    //     actions: <Widget>[
    //       FlatButton(
    //         child: new Text("OK"),
    //         onPressed: () {
    //           Navigator.of(context).pop();
    //         },
    //       ),
    //     ],
    //   );
    // },
    // );
    print("gagal");
    }
 
}


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
                controller: emailController,
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                  controller: passwordController,
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
                    onPressed: userLogin,
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
            Visibility(
          visible: visible, 
          child: Container(
            margin: EdgeInsets.only(bottom: 30),
            child: CircularProgressIndicator()
            )
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
