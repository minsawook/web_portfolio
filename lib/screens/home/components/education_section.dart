import 'package:flutter/material.dart';
import '../../../constants.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: defaultPadding),
          Text('FASTCAMPUS WEBPROGRAMMING SCHOOL 2019~'),
          Text('KNU UNIVERSITY 2010~2017'),
        ],
      ),
    );
  }
}
