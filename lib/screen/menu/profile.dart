import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.green, Colors.lightGreen])),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/sayur.jpg",
                      height: 90,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Abdul Rachman",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("abdulrachman.oman@gmail.com"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pengaturan Umum",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Card(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreen[100],
                  ),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.settings,
                    color: Colors.green,
                  ),
                ),
                title: Text(
                  "Pengaturan Akun",
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: Text(
                  "Perbarui dan modifikasi profil Anda",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreen[100],
                  ),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.verified_user,
                    color: Colors.green,
                  ),
                ),
                title: Text(
                  "Privasi",
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: Text(
                  "Ubah password Anda",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreen[100],
                  ),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                ),
                title: Text(
                  "Pusat Bantuan",
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: Text(
                  "Bantuan penggunaan aplikasi",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.lightGreen[100],
                  ),
                  height: 40,
                  width: 40,
                  child: Icon(
                    Icons.lock_open,
                    color: Colors.green,
                  ),
                ),
                title: Text(
                  "Keluar",
                  style: TextStyle(color: Colors.green),
                ),
                subtitle: Text(
                  "Keluar dari Anda",
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
