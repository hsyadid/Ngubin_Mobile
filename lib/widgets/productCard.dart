import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ngubin/screen/productEntry_form.dart';
import 'package:ngubin/screen/list_product.dart'; // Add this line
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:ngubin/screen/login.dart';

class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;
  static final Random _random = Random();

  // Daftar gradasi warna lembut yang saling melengkapi
  static final List<List<Color>> colorGradients = [
    [Colors.pink.shade200, Colors.red.shade300],
    [Colors.orange.shade300, Colors.redAccent.shade100],
    [Colors.purple.shade200, Colors.pink.shade100],
    [Colors.deepOrange.shade200, Colors.orange.shade300],
    [Colors.redAccent.shade200, Colors.deepOrange.shade100],
    [Colors.amber.shade200, Colors.orange.shade200],
  ];

  // Set untuk melacak gradien yang telah digunakan agar tidak berulang
  static final Set<int> _usedGradients = {};

  const ItemCard(this.item, {super.key});

  List<Color> _getUniqueGradient() {
    // Jika semua gradien telah digunakan, reset set untuk memungkinkan pengulangan
    if (_usedGradients.length == colorGradients.length) {
      _usedGradients.clear();
    }

    // Pilih indeks gradasi unik
    int gradientIndex;
    do {
      gradientIndex = _random.nextInt(colorGradients.length);
    } while (_usedGradients.contains(gradientIndex));

    _usedGradients.add(gradientIndex);
    return colorGradients[gradientIndex];
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    // Ambil gradasi unik
    final gradientColors = _getUniqueGradient();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () async {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content: Text("Kamu telah menekan tombol ${item.name}!")));

            if (item.name == "Tambah Produk") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductForm()),
              );
            } else if (item.name == "Lihat Daftar Produk") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProductPage()),
              );
            } else if (item.name == "Logout") {
              final response = await request.logout(
                  // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                  "http://127.0.0.1:8000/auth/logout/");
              String message = response["message"];
              if (context.mounted) {
                if (response['status']) {
                  String uname = response["username"];
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("$message Sampai jumpa, $uname."),
                  ));
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  );
                }
              }
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 40.0,
                ),
                const SizedBox(height: 10),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
