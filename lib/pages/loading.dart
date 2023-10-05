import 'package:flutter/material.dart';
import 'package:flutter_word_time/common.dart';
import 'package:flutter_word_time/services/word_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading..'),
      ),
    );
  }

  void setupWordTime() async {
    WorldTime worldTime=WorldTime(location: "Berlin", flag: "germany.png", url: "Europe/Berlin");
    await worldTime.getTime();

    Navigator.pushReplacementNamed(
        context,
        Common.homeRoute,
        arguments: {
          'location': worldTime.location,
          'flag': worldTime.flag,
          'time': worldTime.time,
        }
    );
  }
}
