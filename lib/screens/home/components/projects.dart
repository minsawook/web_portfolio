import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/project_card.dart';
import 'package:flutter_profile/screens/home/components/recommendation_card.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import 'ProjectsCart.dart';
import '../../main/components/skills.dart';
import '../../main/components/coding.dart';
import '../../../components/animated_section.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            '보유 기술 (Technical Skills)',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            '''
      Frontend: QT, Flutter
      Database: SQLite, Firebase
      Version Control: Git, GitHub
      Package : GetX, Riverpod, Go Router, Hooks, easy_localization,
      ''',
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding),
          Skills(),
          SizedBox(height: defaultPadding),
          Coding(),
          const SizedBox(height: defaultPadding),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AnimatedSection(
                child: ProjectsCard(
                  recommendation: projects[index],
                ),
              );
            },
            itemCount: projects.length,
          ),
        ],
      ),
    );
  }
}
