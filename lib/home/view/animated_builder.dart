import 'package:flutter/material.dart';

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Color?> animatedColor;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animatedColor = ColorTween(begin: Colors.cyan, end: Colors.deepPurple)
        .animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Builder'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedBuilder(
              animation: animationController,
              child: const Text("Animated Builder"),
              builder: (context, child) {
                return Container(
                  height: 250,
                  width: 250,
                  color: animatedColor.value,
                  child: child,
                );
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (animationController.status == AnimationStatus.completed) {
                    animationController.reverse();
                  } else if (animationController.status ==
                      AnimationStatus.dismissed) {
                    animationController.forward();
                  }

                  // animationController.addStatusListener((status) {
                  //   // if (status == AnimationStatus.completed) {
                  //   //   animationController.reverse();
                  //   // } else if (status == AnimationStatus.dismissed) {
                  //   //   animationController.forward();
                  //   // }
                  // });
                },
                child: const Text("Animated"))
          ],
        ),
      ),
    );
  }
}
