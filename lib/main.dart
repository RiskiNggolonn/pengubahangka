//Ini adalah impor yang diperlukan untuk mengakses library Flutter yang menyediakan berbagai widget dan alat untuk membangun antarmuka pengguna.
import 'package:apk2/dashboard.dart';
import 'package:apk2/homepage.dart';
import 'package:flutter/material.dart';

//Ini adalah fungsi main() yang merupakan titik masuk utama aplikasi Flutter. Di sini, fungsi runApp() digunakan untuk memulai aplikasi dengan widget MyApp().
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Metode build() dalam MyApp digunakan untuk merender widget MaterialApp yang memberikan kerangka dasar untuk aplikasi. Ini menetapkan tema dan judul aplikasi, serta menentukan halaman utama sebagai MyHomePage.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengubah Angka',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "Pengubah Angka",
      ),
    );
  }
}
