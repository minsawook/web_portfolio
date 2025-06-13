import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';

import 'components/about_section.dart';
import 'components/contact_section.dart';
import 'components/education_section.dart';
import 'components/experience_section.dart';
import 'components/home_banner.dart';
import 'components/my_blog.dart';
import 'components/my_projects.dart';
import 'components/projects.dart';
import 'components/recommendations.dart';
import 'components/skills_section.dart';
import 'components/work_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = {
    'home': GlobalKey(),
    'about': GlobalKey(),
    'skills': GlobalKey(),
    'work': GlobalKey(),
    'experience': GlobalKey(),
    'education': GlobalKey(),
    'blog': GlobalKey(),
    'contact': GlobalKey(),
  };

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      scrollController: _scrollController,
      sectionKeys: _sectionKeys,
      children: [
        Container(key: _sectionKeys['home'], child: const HomeBanner()),
        Container(key: _sectionKeys['about'], child: const AboutSection()),
        Container(key: _sectionKeys['skills'], child: const SkillsSection()),
        Container(key: _sectionKeys['work'], child: const WorkSection()),
        Container(key: _sectionKeys['experience'], child: const ExperienceSection()),
        Container(key: _sectionKeys['education'], child: const EducationSection()),
        Container(key: _sectionKeys['blog'], child: MyPost()),
        Container(key: _sectionKeys['contact'], child: const ContactSection()),
      ],
    );
  }
}
