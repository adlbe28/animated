import 'package:flutter/material.dart';

class CustomTransformss extends StatefulWidget {
  CustomTransformss({super.key, required this.valtranform});
  double valtranform;

  @override
  State<CustomTransformss> createState() => _CustomTransformssState();
}

class _CustomTransformssState extends State<CustomTransformss> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Center(
              child: Transform.rotate(
                  angle: 3.14 / widget.valtranform,
                  child: Container(
                    height: 150,
                    width: 70,
                    color: Colors.amber,
                  )),
            ),
            Slider(
              min: 0.1,
              value: widget.valtranform,
              onChanged: (value) {
                setState(() {
                  widget.valtranform = value;
                });
              },
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Center(
          child: Transform.scale(
              scale: 1.5,
              child: Container(
                height: 100,
                width: 50,
                color: Colors.red,
              )),
        ),
        Center(
          child: Transform.translate(
              offset: const Offset(150, -50),
              child: Container(
                height: 100,
                width: 50,
                color: Colors.blue,
              )),
        ),
        Center(
          child: Transform(
              transform: Matrix4.rotationZ(20)
                ..scale(1.5)
                ..rotateZ(3.14 / 4),
              child: Container(
                height: 100,
                width: 50,
                color: Colors.red,
              )),
        ),
      ],
    );
  }
}
