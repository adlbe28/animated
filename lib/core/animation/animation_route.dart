import 'package:flutter/material.dart';

class SliderTransitionAnimationRoute extends PageRouteBuilder {
  final dynamic page;
  SliderTransitionAnimationRoute(
    this.page,
  ) : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = const Offset(0, 1);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetanimation = animation.drive(tween);

            return SlideTransition(
              position: offsetanimation,
              child: child,
            );
          },
        );
}

class ScaleTransitionAnimationRoute extends PageRouteBuilder {
  final dynamic page;
  ScaleTransitionAnimationRoute(
    this.page,
  ) : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = 0.0;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var carv =
                CurvedAnimation(parent: animation, curve: Curves.easeInBack);

            return ScaleTransition(
              scale: tween.animate(carv),
              child: child,
            );
          },
        );
}

class RotationTransitionAnimationRoute extends PageRouteBuilder {
  final dynamic page;
  RotationTransitionAnimationRoute(
    this.page,
  ) : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = 0.0;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var carv =
                CurvedAnimation(parent: animation, curve: Curves.easeInBack);

            return RotationTransition(
              turns: tween.animate(carv),
              child: child,
            );
          },
        );
}

class SizeTransitionAnimationRoute extends PageRouteBuilder {
  final dynamic page;
  SizeTransitionAnimationRoute(
    this.page,
  ) : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        );
}

class FadeTransitionAnimationRoute extends PageRouteBuilder {
  final dynamic page;
  FadeTransitionAnimationRoute(
    this.page,
  ) : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}

class RotationAndScaleTransitionAnimationRoute extends PageRouteBuilder {
  final dynamic page;
  RotationAndScaleTransitionAnimationRoute(
    this.page,
  ) : super(
          pageBuilder: (context, animation, animationTwo) => page,
          transitionsBuilder: (context, animation, animationTwo, child) {
            var begin = 0.0;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var carv =
                CurvedAnimation(parent: animation, curve: Curves.easeInBack);

            return ScaleTransition(
              scale: carv,
              child: RotationTransition(
                turns: tween.animate(carv),
                child: child,
              ),
            );
          },
        );
}

