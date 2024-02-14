import 'package:flutter/material.dart';
class SnakesPage extends StatefulWidget {
  const SnakesPage({super.key});

  @override
  State<SnakesPage> createState() => _SnakesPageState();
}

class _SnakesPageState extends State<SnakesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
      ),
    );
  }
}
