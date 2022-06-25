import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

import 'activities/home_activity.dart';

void main() async {
  _setupLogging();

  runApp(
    MyApp(),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'location_tracking_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: Color(int.parse("0xffF5F5F5")),
          unselectedWidgetColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeActivity(),
    );
  }
}

