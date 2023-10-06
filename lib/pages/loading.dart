import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_word_time/common.dart';
import 'package:flutter_word_time/services/word_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  void initState() {
    super.initState();
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: const Center(
          child: SpinKitThreeInOut(
            color: Colors.white,
            size: 80.0,
          ),
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
