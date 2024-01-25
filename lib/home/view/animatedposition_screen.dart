import 'package:animation_app/home/view/widget/custom_animated_position.dart';
import 'package:flutter/material.dart';

class AnimatedPositionScreen extends StatelessWidget {
  const AnimatedPositionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Position'),
      ),
      body: const Center(
        child: CustomAnimatedPosition(),
      ),
    );
  }
}
