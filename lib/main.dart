import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/produk_form.dart';
import 'package:flutter_application_1/ui/produk_page.dart';
import 'package:flutter_application_1/widget_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Aplikasi Flutter Pertama",
      home: ProdukPage(),
    );
  }
}
