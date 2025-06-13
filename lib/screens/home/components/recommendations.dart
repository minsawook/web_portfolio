import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';
import 'package:flutter_profile/screens/home/components/recommendation_card.dart';

import '../../../constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
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
            "career",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                demo_recommendations.length,
                (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: RecommendationCard(
                      recommendation: demo_recommendations[index],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
