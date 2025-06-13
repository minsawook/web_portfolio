import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/my_blog.dart';
import 'package:flutter_profile/screens/home/components/projects.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        // HomeBanner(),
        Recommendations(),
        Projects(),
        MyProjects(),
        MyPost(),
      ],
    );
  }
}
