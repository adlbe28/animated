import 'package:animation_app/home/view/widget/custom_animatedcrossfead.dart';
import 'package:flutter/material.dart';

class AnimatedCrossFeadScreen extends StatelessWidget {
  const AnimatedCrossFeadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated CrossFead'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomAnimatedCrossFead()],
        ),
      ),
    );
  }
}
