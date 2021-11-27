import 'package:flutter/material.dart';
import 'package:animation_app/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    controller.forward();
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(title: 'Product layout demo home page', animation: animation),
      debugShowCheckedModeBanner: false,
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
