import 'package:animation_app/core/animation/animation_route.dart';
import 'package:animation_app/home/view/animated_builder.dart';
import 'package:animation_app/home/view/animated_container_screen.dart';
import 'package:animation_app/home/view/animatedcrossfead_screen.dart';
import 'package:animation_app/home/view/animatedposition_screen.dart';
import 'package:animation_app/home/view/foo_transition_widget.dart';
import 'package:animation_app/home/view/page_two.dart';
import 'package:animation_app/home/view/transform_screen.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    SliderTransitionAnimationRoute(const PageTwoScreen()),
                  );
                },
                child: const Text("GO To Page Two With SliderAnimationRoute")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    FadeTransitionAnimationRoute(const PageTwoScreen()),
                  );
                },
                child: const Text(
                    "GO To Page Two With FadeTransitionAnimationRoute")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    ScaleTransitionAnimationRoute(const PageTwoScreen()),
                  );
                },
                child: const Text("GO To Page Two With ScaleAnimationRoute")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    RotationTransitionAnimationRoute(
                        const AnimatedCrossFeadScreen()),
                  );
                },
                child: const Text(
                    "GO To AnimatedCrossFead  With RotationTransitionAnimationRoute")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    SizeTransitionAnimationRoute(
                        const AnimatedContainerScreen()),
                  );
                },
                child: const Text(
                    "GO To  AnimatedCrossfead With SizeTransitionAnimationRoute")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    RotationAndScaleTransitionAnimationRoute(
                        const TransformScreen()),
                  );
                },
                child: const Text(
                    "GO To Animated Position With RotationAndScaleTransitionAnimationRoute")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    RotationAndScaleTransitionAnimationRoute(
                        const AnimatedPositionScreen()),
                  );
                },
                child: const Text("GO To Animated Position ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    RotationAndScaleTransitionAnimationRoute(
                        const FooTransitionWidgetScreen()),
                  );
                },
                child: const Text("GO To Transition widget ")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    RotationAndScaleTransitionAnimationRoute(
                        const AnimatedBuilderScreen()),
                  );
                },
                child: const Text("GO To Animated Builder ")),
          ],
        ),
      ),
    );
  }
}
