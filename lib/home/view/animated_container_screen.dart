import 'package:animation_app/home/view/widget/custom_animatedcontainer.dart';
import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aniamted Container'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomAnimatedContainar()],
        ),
      ),
    );
  }
}
