import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 241, 239, 202),
            width: 500,
            height: 100,
            child: const Text('朝の血圧'),
          ),
          Container(
            color: const Color.fromARGB(255, 199, 201, 129),
            width: 500,
            height: 100,
            child: const Text('夜の血圧'),
          ),
        ],
      ),
    );
  }
}
