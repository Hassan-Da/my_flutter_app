import 'package:flutter/material.dart';
import 'package:my_app/pages/counter.page.dart';
import 'package:my_app/pages/home.page.dart';
import 'package:my_app/pages/product.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/counter': (context) => CounterPage(),
        '/product': (context) => ProductPage(),
      },
      theme: ThemeData(
          primarySwatch: Colors.orange,
          textTheme: const TextTheme(
              bodyLarge: TextStyle(fontSize: 32, color: Colors.orange),
              bodyMedium: TextStyle(fontSize: 22, color: Colors.brown),
              bodySmall: TextStyle(fontSize: 18, color: Colors.orange)),
          iconTheme: IconThemeData(color: Colors.brown)),
    );
  }
}
