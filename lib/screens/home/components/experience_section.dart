import 'package:flutter/material.dart';
import '../../../constants.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Experience', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: defaultPadding),
          Text('여러 스타트업과 프로젝트를 통해 경험을 쌓았습니다.'),
        ],
      ),
    );
  }
}
