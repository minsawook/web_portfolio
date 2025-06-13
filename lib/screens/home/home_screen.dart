import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/home/components/my_blog.dart';
import 'package:flutter_profile/screens/home/components/projects.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import '../../components/animated_section.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final _aboutMe = GlobalKey();
  final _skillKey = GlobalKey();
  final _careerKey = GlobalKey();
  final _projectKey = GlobalKey();
  final _toyKey = GlobalKey();
  final _postKey = GlobalKey();

  void _onMenu(String id) {
    final contextMap = {
      'career': _careerKey,
      'projects': _projectKey,
      'toys': _toyKey,
      'posts': _postKey,
    };
    final key = contextMap[id];
    if (key != null && key.currentContext != null) {
      Scrollable.ensureVisible(key.currentContext!, duration: const Duration(milliseconds: 500));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      scrollController: _scrollController,
      onMenuTap: _onMenu,
      children: [
        HomeBanner(),
        AnimatedSection(sectionKey: _aboutMe, child: Container()),
        AnimatedSection(sectionKey: _skillKey, child: Container()),
        AnimatedSection(sectionKey: _careerKey, child: Recommendations()),
        AnimatedSection(sectionKey: _projectKey, child: Projects()),
        AnimatedSection(sectionKey: _toyKey, child: MyProjects()),
        AnimatedSection(sectionKey: _postKey, child: MyPost()),
      ],
    );
  }
}
