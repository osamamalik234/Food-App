import 'package:flutter/material.dart';

class PandamartScreen extends StatefulWidget {
  const PandamartScreen({Key? key}) : super(key: key);

  @override
  State<PandamartScreen> createState() => _PandamartScreenState();
}

class _PandamartScreenState extends State<PandamartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Pandamart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              'Hello Pandamart!',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
