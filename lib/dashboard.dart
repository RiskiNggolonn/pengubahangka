import 'package:flutter/material.dart';

class Dashboar extends StatelessWidget {
  const Dashboar({super.key});

  //Ini adalah metode build() untuk merender tampilan DASHBOARD. Ini menggunakan Scaffold sebagai kerangka dasar dan menampilkan AppBar, body dengan teks
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),

      //BODY Yang Mengunakan widget singglechildscrollview
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const Column(
            children: <Widget>[
              Text(
                'Anda Berhasil Login',
                style: TextStyle(fontSize: 50),
              )
            ],
          ),
        ),
      ),
    );
  }
}
