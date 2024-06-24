import 'package:flutter/material.dart';
import 'package:my_app/pages/widgets/drawer.header.dart';
import 'package:my_app/pages/widgets/drawer.item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(fontSize: 25, color: Colors.brown),
          ),
          backgroundColor: Colors.orange,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              MyDrawerHeader(),
              MyDrawerItem(
                title: "Home",
                icon: Icon(Icons.home_filled,
                    color: Theme.of(context).iconTheme.color),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/");
                },
              ),
              MyDrawerItem(
                title: "Counter",
                icon:
                    Icon(Icons.money, color: Theme.of(context).iconTheme.color),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/counter");
                },
              ),
              MyDrawerItem(
                title: "Products",
                icon: Icon(Icons.shopping_cart,
                    color: Theme.of(context).iconTheme.color),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("/product");
                },
              )
            ],
          ),
        ),
        body: Center(
          child: Text(
            "Hello Walid",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ));
  }
}
