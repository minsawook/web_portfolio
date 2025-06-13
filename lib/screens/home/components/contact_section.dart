import 'package:flutter/material.dart';
import '../../../constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: defaultPadding),
          Text('Email: deaguowl@gmail.com'),
          Text('Location: 서울특별시 성동구 성수동2가'),
          Text('Phone: +82 10 4920 3508'),
        ],
      ),
    );
  }
}
