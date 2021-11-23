import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  get wid => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'To Do App',
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 30, color: Colors.indigo, fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}
