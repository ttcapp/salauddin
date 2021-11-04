import 'dart:math';

import 'package:flutter/material.dart';
import 'package:salauddin/log_in.dart';


void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        navigatorKey: navigatorKey,
        home:  LogIn(),
      );
  }
}
