import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Bloc'),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
