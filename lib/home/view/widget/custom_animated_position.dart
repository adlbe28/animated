import 'package:flutter/material.dart';

class CustomAnimatedPosition extends StatefulWidget {
  const CustomAnimatedPosition({super.key});

  @override
  State<CustomAnimatedPosition> createState() => _CustomAnimatedPositionState();
}

class _CustomAnimatedPositionState extends State<CustomAnimatedPosition> {
  double top = 0;
  double right = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(color: Colors.amber, width: 400, height: 400),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: top,
              right: right,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                top = 100;
                right = 200;
              });
            },
            child: const Text("Animat"))
      ],
    );
  }
}
