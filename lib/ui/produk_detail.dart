import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;

  const ProdukDetail({super.key, this.kodeProduk, this.namaProduk, this.harga});

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
      ),
      body: Column(
        children: [
          // ignore: prefer_interpolation_to_compose_strings
          Text("Kode Produk : " + widget.kodeProduk.toString()),
          Text("Nama Produk : ${widget.namaProduk}"),
          Text("Harga : ${widget.harga}")
        ],
      ),
    );
  }
}
