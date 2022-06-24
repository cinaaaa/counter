import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  const NumberWidget({
    Key? key,
    required this.count,
  }) : super(key: key);
  final int count;

  @override
  State<NumberWidget> createState() => NumberWidgetState();
}

class NumberWidgetState extends State<NumberWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      duration: const Duration(milliseconds: 500),
      value: widget.count,
      textStyle: const TextStyle(
          fontSize: 200,
          color: Color(0xff0a3766),
          fontWeight: FontWeight.bold), // pass in a value like 2014
    );
  }
}
