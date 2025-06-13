import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/project_card.dart';
import 'package:flutter_profile/screens/home/components/recommendation_card.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import 'ProjectsCart.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Projects\n",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "보유 기술 (Technical Skills)\n",
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
          SingleChildScrollView(
              child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ProjectsCard(
                recommendation: projects[index],
              );
            },
            itemCount: projects.length,
          )

              /*  Column(
          children: [
          RecommendationCard(
          recommendation: demo_recommendations[0],
          ),
        ],
      ),
    )
    SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        ]  List.generate(
        demo_recommendations.length,
            (index) => Padding(
          padding: const EdgeInsets.only(right: defaultPadding),
          child: RecommendationCard(
            recommendation: demo_recommendations[index],
          ),
        ),
      ),
    ),*/
              ),
        ],
      ),
    );
  }
}
