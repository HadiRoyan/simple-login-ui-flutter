import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            const SizedBox(
              width: 175,
              height: 175,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profile.jpeg'),
              ),
            ),
            Container(
                padding: const EdgeInsets.only(top: 32),
                child: const Text(
                  'Muhammad Hadi Royan Firdaus',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
            const Text(
              'hadiroyan3@gmail.com',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
