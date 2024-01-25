import 'package:animation_app/home/view/widget/custom_transform.dart';
import 'package:flutter/material.dart';

class TransformScreen extends StatelessWidget {
  const TransformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transform'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CustomTransformss(valtranform: 0.2)],
        ),
      ),
    );
  }
}
