import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Center(
            child: Text(
              'Cow Info',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: const Home(),
      ),
    ),
  );
}
