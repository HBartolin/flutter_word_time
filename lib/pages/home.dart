import 'package:flutter/material.dart';
import 'package:flutter_word_time/common.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, Common.locationRoute);
                },
                icon: const Icon(Icons.edit_location),
                label: const Text("Edit Location")
            )
          ],
      )),
    );
  }
}
