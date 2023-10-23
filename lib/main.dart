import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/home_page.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}
