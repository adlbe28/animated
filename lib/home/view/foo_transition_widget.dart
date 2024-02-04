import 'package:flutter/material.dart';

class FooTransitionWidgetScreen extends StatefulWidget {
  const FooTransitionWidgetScreen({super.key});

  @override
  State<FooTransitionWidgetScreen> createState() =>
      _FooTransitionWidgetScreenState();
}

class _FooTransitionWidgetScreenState extends State<FooTransitionWidgetScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animatedController;
  late Animation<AlignmentGeometry> _greencircle;
  late Animation<AlignmentGeometry> _redCircle;
  @override
  void initState() {
    _animatedController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 2),
    );
    _redCircle = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(_animatedController);
    _greencircle = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(_animatedController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                AlignTransition(
                  alignment: _redCircle,
                  child: const CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                ),
                AlignTransition(
                  alignment: _greencircle,
                  child: const CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Wrap(
            children: [
              ElevatedButton(
                  onPressed: () {
                    _animatedController.forward();
                  },
                  child: const Text("Forward")),
              ElevatedButton(
                  onPressed: () {
                    _animatedController.reverse();
                  },
                  child: const Text("Reverse")),
              ElevatedButton(
                  onPressed: () {
                    _animatedController.stop();
                  },
                  child: const Text("Stop")),
              ElevatedButton(
                  onPressed: () {
                    _animatedController.repeat();
                  },
                  child: const Text("Repeat(revers=False)")),
              ElevatedButton(
                  onPressed: () {
                    _animatedController.repeat(
                      reverse: true,
                    );
                  },
                  child: const Text("Repeat (reverse = True)")),
            ],
          )
        ],
      ),
    );
  }
}
