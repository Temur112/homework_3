import 'package:flutter/material.dart';
import 'package:homework_3/ScreenTwo.dart';

import 'package:homework_3/ScreenFour.dart';
import 'package:homework_3/ScreenFive.dart';

class ScreenThree extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final String? receivedData =
        ModalRoute.of(context)!.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Screen Three'),
            const SizedBox(
              height: 50,
            ),
            Text(receivedData ?? "You didnot enter text"),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: "Enter your data to see next screen",
              ),
            ),
            TextButton(
                onPressed: () {
                  String data = _textEditingController.text;
                  Navigator.pushNamed(context, '/screenFour', arguments: data);
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
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.blue,
                )),
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
