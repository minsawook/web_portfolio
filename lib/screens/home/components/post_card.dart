import 'package:flutter/material.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:html/parser.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';
import '../../../models/velog_post.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required this.post,
  }) : super(key: key);

  final VelogRssItem post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        goLink(post.link!);
      },
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: primaryColor, fontSize: 20, fontWeight: FontWeight.bold)
                //Theme.of(context).textTheme.titleSmall,
                ),
            Spacer(),
            Expanded(
              flex: 4,
              child: Text(
                parseHtmlString(post.description!),
                //maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5, color: Colors.black87),
              ),
            ),
            // Spacer(),
            // IconButton(
            //   onPressed: () {
            //     goLink(post.link!);
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

String parseHtmlString(String htmlString) {
  try {
    final document = parse(htmlString);
    final String parsedString = parse(document.body!.text).documentElement!.text;

    return parsedString;
  } catch (e) {
    return htmlString;
  }
}
