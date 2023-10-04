import 'package:flutter/material.dart';
import 'package:flutter_word_time/pages/choose_location.dart';
import 'package:flutter_word_time/pages/home.dart';
import 'package:flutter_word_time/pages/loading.dart';

void main() {
  String homeRoute="/home";

  runApp(MaterialApp(
    initialRoute: homeRoute,
    routes: {
      "/": (context) => Loading(),
      homeRoute: (context) => Home(),
      "/location": (context) => ChooseLocation()
    },
  ));
}

