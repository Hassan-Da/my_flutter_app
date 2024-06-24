import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/R.jpg"),
            radius: 50,
          )
        ],
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.brown, Colors.orange])),
    );
  }
}
