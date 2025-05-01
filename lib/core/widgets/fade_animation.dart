import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget
{
  final Widget child;
  final Animation<double> animation;

  const FadeAnimation({required this.child,required this.animation});
  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        child: child,
        opacity: animation);
  }
}