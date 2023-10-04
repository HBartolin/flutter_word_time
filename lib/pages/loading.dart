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
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Loading"),
    );
  }

  void getData() async {
    Response response= await get("https://jsonplaceholder.typicode.com/todos/1" as Uri);
    Map data=jsonDecode(response.body);
  }
}
