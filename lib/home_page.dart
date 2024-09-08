
import 'package:chatapp/chat_screen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CHAT"),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),

      ),
      body: ChatScreen(),





      );

  }
}
