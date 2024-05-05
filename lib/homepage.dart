import 'package:apk2/dashboard.dart';
import 'package:flutter/material.dart';

//Ini adalah halaman utama aplikasi yang merupakan turunan dari StatefulWidget. Ini berisi logika stateful dan mengatur tampilan yang dapat berubah sesuai dengan perubahan status.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

//Ini adalah kelas yang mengimplementasikan state untuk MyHomePage. Ini memiliki variabel _counter yang menunjukkan jumlah kali tombol ditekan dan metode _incrementCounter() yang meningkatkan nilai _counter.
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //Ini adalah metode build() untuk merender tampilan MyHomePage. Ini menggunakan Scaffold sebagai kerangka dasar dan menampilkan AppBar, body dengan teks dan angka yang diperbarui (_counter), serta FloatingActionButton yang memicu peningkatan _counter saat ditekan.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Dashboar(),
                  ));
            }),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Tekan Tombol Plus Untuk Mengubah Angka :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
