import 'package:flutter/material.dart';
import 'package:homework_3/ScreenTwo.dart';
import 'package:homework_3/ScreenThree.dart';

import 'package:homework_3/ScreenFive.dart';

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String? receivedData =
        ModalRoute.of(context)!.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Four'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen four'),
            const SizedBox(
              height: 30,
            ),
            Text(receivedData ?? "nothing"),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScreenFive(),
                      ));
                },
                child: const Text("Go to next"))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: const Icon(
                  Icons.home,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenTwo()));
                },
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenThree()));
                },
                icon: const Icon(Icons.favorite)),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenFour()));
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ScreenFive()));
                },
                icon: const Icon(Icons.account_circle)),
          ],
        ),
      ),
    );
  }
}
