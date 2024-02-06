import 'package:flutter/material.dart';

class FooTransitionWidgetScreen extends StatefulWidget {
  const FooTransitionWidgetScreen({super.key});

  @override
  State<FooTransitionWidgetScreen> createState() =>
      _FooTransitionWidgetScreenState();
}

class _FooTransitionWidgetScreenState extends State<FooTransitionWidgetScreen>
    with TickerProviderStateMixin {
  late AnimationController _greenController;
  late AnimationController _redController;
  late Animation<AlignmentGeometry> _greencircle;
  late Animation<AlignmentGeometry> _redCircle;
  @override
  void initState() {
    _greenController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 2),
    );
    _redController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
      reverseDuration: const Duration(seconds: 2),
    );
    _redCircle = Tween<AlignmentGeometry>(
            begin: Alignment.topCenter, end: Alignment.bottomCenter)
        .animate(
            CurvedAnimation(parent: _redController, curve: Curves.easeInOut));
    _greencircle = Tween<AlignmentGeometry>(
            begin: Alignment.centerLeft, end: Alignment.centerRight)
        .animate(_greenController);

    super.initState();
  }

  @override
  void dispose() {
    _greenController.dispose();
    _redController.dispose();
    super.dispose();
  }

  void _ListenercontrollerStatus(animationStatus) {
    print("=============$animationStatus===========");
    if ((_greenController.status == AnimationStatus.dismissed) &&
        (_redController.status == AnimationStatus.completed)) {
      _greenController.forward();
    }
  }

  void _ListenerControllerValue() {
    print("=============${_redController.value} ===========");
    if ((_redController.value <= 0.5) && (_greenController.value == 1)) {
      _greenController.reverse();
    }
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
            spacing: 10,
            children: [
              ElevatedButton(
                  onPressed: () {
                    _redController.forward();
                    // _redController.addStatusListener(_ListenercontrollerStatus);
                  },
                  child: const Text("Forward")),
              ElevatedButton(
                  onPressed: () {
                    _redController.reverse();
                    // _redController.addListener(_ListenerControllerValue);
                  },
                  child: const Text("Reverse")),
              ElevatedButton(
                  onPressed: () {
                    _redController.stop();
                  },
                  child: const Text("Stop")),
              ElevatedButton(
                  onPressed: () {
                    _redController.repeat();
                  },
                  child: const Text("Repeat(revers=False)")),
              ElevatedButton(
                  onPressed: () {
                    _redController.repeat(
                      reverse: true,
                    );
                  },
                  child: const Text("Repeat (reverse = True)")),
              ElevatedButton(
                  onPressed: () {
                    _redController
                        .removeStatusListener(_ListenercontrollerStatus);
                  },
                  child: const Text("remove Status Listener ")),
              ElevatedButton(
                  onPressed: () {
                    _redController.removeListener(_ListenerControllerValue);
                  },
                  child: const Text("remove value Listener")),
              ElevatedButton(
                  onPressed: () {
                    _redController.addStatusListener(_ListenercontrollerStatus);
                  },
                  child: const Text("add Status Listener ")),
              ElevatedButton(
                  onPressed: () {
                    _redController.addListener(_ListenerControllerValue);
                  },
                  child: const Text("add value Listener")),
            ],
          )
        ],
      ),
    );
  }
}
