import 'package:flutter/material.dart';
import 'package:world_time/Home.dart';
import 'package:world_time/Loading.dart';
import 'package:world_time/Location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/Location',
    routes: {
      '/Home': (context) => Home(),
      '/Loading': (context) => Loading(),
      '/Location': (context) => Location()
    },
  ));
}
