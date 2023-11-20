import 'package:flutter/material.dart';
import 'package:homework_3/ScreenTwo.dart';
import 'package:homework_3/ScreenThree.dart';
import 'package:homework_3/ScreenFour.dart';
import 'package:homework_3/ScreenFive.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const StartingMenu(),
      '/screenTwo': (context) => ScreenTwo(),
      '/screenThree': (context) => ScreenThree(),
      '/screenFour': (context) => ScreenFour(),
      '/screenFive': (context) => ScreenFive(),
    },
  ));
}

class StartingMenu extends StatelessWidget {
  const StartingMenu({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beginning'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Hello"),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScreenTwo()));
                  },
                  child: const Text("Go to next screen"))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StartingMenu()));
                },
                icon: const Icon(
                  Icons.home,
                  color: Colors.blue,
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
                icon: const Icon(Icons.shopping_cart)),
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
