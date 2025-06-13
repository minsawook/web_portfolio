import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Recommendation project;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goLink(project.github!);
      },
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold)
                //Theme.of(context).textTheme.titleSmall,
                ),
            Spacer(),
            Expanded(
              flex: 4,
              child: Text(
                project.description!,
                maxLines: Responsive.isMobileLarge(context) ? 5 : 6,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5, color: Colors.white70),
              ),
            ),
            // Spacer(),
            // IconButton(
            //   onPressed: () {
            //     goLink(project.github!);
            //   },
            //   icon: SvgPicture.asset("assets/icons/github.svg"),
            // ),
            /* TextButton(
              onPressed: () {},
              child: Text(
                "Read More >>",
                style: TextStyle(color: primaryColor),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

goLink(String link) async {
  if (!await launch(link)) throw 'Could not launch $link';
}
