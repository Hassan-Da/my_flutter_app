import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product",
          style: TextStyle(fontSize: 25, color: Colors.brown),
        ),
        backgroundColor: Colors.orange,
      ),
    );
  }
}
