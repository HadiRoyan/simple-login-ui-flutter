import 'package:flutter/material.dart';
import 'package:shoe_store/about_screen.dart';
import 'package:shoe_store/login_screen.dart';
import 'package:shoe_store/model/shoe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shoe Store'),
          elevation: 2,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutScreen()));
                },
                icon: const Icon(Icons.info_outline)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Shoe shoe = shoes[index];
            return Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Image.asset(shoe.imageAsset)),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            shoe.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          Text(shoe.price),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: shoes.length,
        ));
  }
}
