import 'package:flutter/material.dart';
import 'package:flutter_word_time/pages/choose_location.dart';
import 'package:flutter_word_time/pages/home.dart';
import 'package:flutter_word_time/pages/loading.dart';
import 'package:flutter_word_time/common.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: Common.rootRoute,
    routes: {
      Common.rootRoute: (context) => const Loading(),
      Common.homeRoute: (context) => const Home(),
      Common.locationRoute: (context) => const ChooseLocation()
    },
  ));
}

