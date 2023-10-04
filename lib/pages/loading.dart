import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Loading"),
    );
  }

  void getTime() async {
    Response response= await get("https://worldtimeapi.org/api/timezone/Europe/Zagreb" as Uri);
    Map data=jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
  }
}
