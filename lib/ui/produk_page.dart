import 'package:flutter/material.dart';

import 'produk_detail.dart';
import 'produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
              child: const Icon(Icons.add),
              onTap: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProdukForm()));
              })
        ],
      ),
      body: ListView(
        children: const [
          // List 1
          ItemProduk(
            kodeProduk: "A001",
            namaProduk: "Kulkas",
            harga: 2500000,
          ),
          // List 2
          ItemProduk(
            kodeProduk: "A002",
            namaProduk: "TV",
            harga: 5000000,
          ),
          // List 3
          ItemProduk(
            kodeProduk: "A003",
            namaProduk: "Mesin Cuci",
            harga: 1500000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ItemProduk({super.key, this.kodeProduk, this.namaProduk, this.harga});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text(namaProduk.toString()),
          subtitle: Text(harga.toString()),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProdukDetail(
                      kodeProduk: kodeProduk,
                      namaProduk: namaProduk,
                      harga: harga,
                    )));
      },
    );
  }
}
