import 'package:flutter/material.dart';

class CustomAnimatedContainar extends StatefulWidget {
  const CustomAnimatedContainar({super.key});

  @override
  State<CustomAnimatedContainar> createState() => _AnimatedContainarState();
}

class _AnimatedContainarState extends State<CustomAnimatedContainar> {
  double width = 100;
  double height = 150;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: width,
          height: height,
          color: Colors.red,
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                width = width == 100 ? 150 : 100;
                height = height == 150 ? 200 : 150;
              });
            },
            child: const Text("Animat"))
      ],
    );
  }
}
