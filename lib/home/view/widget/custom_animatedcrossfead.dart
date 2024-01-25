import 'package:flutter/material.dart';

class CustomAnimatedCrossFead extends StatefulWidget {
  const CustomAnimatedCrossFead({
    super.key,
  });

  @override
  State<CustomAnimatedCrossFead> createState() =>
      CustomAnimatedCrossFeadState();
}

class CustomAnimatedCrossFeadState extends State<CustomAnimatedCrossFead> {
  bool showfade = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedCrossFade(
            firstChild: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 100,
              height: 150,
              color: Colors.red,
            ),
            secondChild: AnimatedContainer(
              duration: const Duration(seconds: 1),
              width: 200,
              height: 250,
              color: Colors.green,
            ),
            crossFadeState:
                showfade ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1)),
        ElevatedButton(
            onPressed: () {
              setState(() {
                showfade = !showfade;
              });
            },
            child: const Text("Animat"))
      ],
    );
  }
}
