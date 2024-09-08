import 'package:flutter/material.dart';
import 'package:chatapp/home_page.dart';
void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "chat app",
      home: HomePage(),
    );
  }
}


