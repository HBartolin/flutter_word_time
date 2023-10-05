import 'package:flutter/material.dart';
import 'package:flutter_word_time/services/word_time.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  @override
  void initState() {
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }

  void setupWordTime() async {
    WorldTime worldTime=WorldTime(location: "Berlin", flag: "germany.png", url: "Europe/Berlin");
    await worldTime.getTime();
    print(worldTime.time);

    setState(() {
      time = worldTime.time;
    });
  }
}
