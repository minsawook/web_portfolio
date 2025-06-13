import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "additional skill",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.3,
          label: "Git",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.3,
          label: "Git Hub",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.35,
          label: "Qt",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.2,
          label: "Java",
        ),
      ],
    );
  }
}
