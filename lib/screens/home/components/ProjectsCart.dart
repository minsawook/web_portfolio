import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Recommendation.dart';

import '../../../constants.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    final List<String> split = recommendation.text!.split('-');
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: kDefaultCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                fit: FlexFit.tight,
                // width: MediaQuery.of(context).size.width/0.2,
                child: Text(
                  recommendation.name!,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  //style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.period!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, fontSize: 18),
          ),
          Text(
            '프로젝트 설명',
            maxLines: 2,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            recommendation.source!,
            maxLines: null,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '역활',
            maxLines: null,
            //overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          SizedBox(
            height: 3,
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => Text(
                    '- ${split[index]}',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(height: 1.5),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 0,
                  ),
              itemCount: split.length)
        ],
      ),
    );
  }
}
