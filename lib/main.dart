import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Produk Toko Anis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProdukPage(),
    );
  }
}

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  // Data produk
  final List<Map<String, dynamic>> produkList = [
    {
      'nama': 'Gantungan kunci',
      'harga': 35000,
      'stok': 'by request',
      'gambar':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIGDFYxRYtOf-tBU0Go_64C1aIQSpzaGxaeQ&s',
    },
    {
      'nama': 'Amigurumi kecil',
      'harga': 65000,
      'stok': 'by request',
      'gambar':
          'https://devmedia.discovernikkei.org/articles/8911/amigurumi1.jpg',
    },
    {
      'nama': 'Amigurumi besar',
      'harga': 105000,
      'stok': 'by request',
      'gambar':
          'https://www.thenicolechase.com/wp-content/uploads/2023/05/Learn-Amigurumi-14-scaled.jpg',
    },
    {
      'nama': 'Tas',
      'harga': 250000,
      'stok': 'by request',
      'gambar':
          'https://www.crochet365knittoo.com/wp-content/uploads/2019/09/Sunflower-3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: produkList.length,
        itemBuilder: (context, index) {
          final produk = produkList[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 3,
            child: ListTile(
              leading: Image.network(
                produk['gambar'],
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                produk['nama'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Harga: Rp ${produk['harga']}\nStok: ${produk['stok']}',
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.shopping_cart_outlined),
            ),
          );
        },
      ),
    );
  }
}