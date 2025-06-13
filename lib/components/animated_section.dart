import 'package:flutter/material.dart';

/// A simple fade and slide animation wrapper used for page sections.
class AnimatedSection extends StatelessWidget {
  final Widget child;
  final Key? sectionKey;
  final Duration duration;

  const AnimatedSection({
    this.sectionKey,
    required this.child,
    this.duration = const Duration(milliseconds: 600),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 1),
      duration: duration,
      builder: (context, value, inner) => Opacity(
        opacity: value,
        child: Transform.translate(
          offset: Offset(0, 30 * (1 - value)),
          child: inner,
        ),
      ),
      child: Container(key: sectionKey, child: child),
    );
  }
}
