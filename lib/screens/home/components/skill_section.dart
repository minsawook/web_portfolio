import 'dart:math';

import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/skill.dart';

class SkillSection extends StatelessWidget {
  final List<Skill> skills;
  const SkillSection({Key? key, required this.skills}) : super(key: key);

  Color _randomColor() {
    final r = Random();
    return Colors.primaries[r.nextInt(Colors.primaries.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: defaultPadding),
          LayoutBuilder(
            builder: (context, constraints) {
              final itemWidth = (constraints.maxWidth - defaultPadding) / 2;
              return Wrap(
                spacing: defaultPadding,
                runSpacing: defaultPadding,
                children: skills.map((s) {
                  return SizedBox(
                    width: itemWidth,
                    child: _SkillBar(skill: s, color: _randomColor()),
                  );
                }).toList(),
              );
            },
          ),
          const SizedBox(height: defaultPadding),
          const _PackageInfo(),
        ],
      ),
    );
  }
}

class _SkillBar extends StatelessWidget {
  final Skill skill;
  final Color color;
  const _SkillBar({required this.skill, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill.name, style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        LayoutBuilder(
          builder: (context, constraints) {
            final barWidth = constraints.maxWidth;
            final progressWidth = barWidth * skill.level;
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: barWidth,
                  height: 10,
                  decoration: BoxDecoration(
                    color: darkColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  width: progressWidth,
                  height: 10,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Positioned(
                  top: -22,
                  left: progressWidth,
                  child: FractionalTranslation(
                    translation: const Offset(-0.5, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '${(skill.level * 100).round()}%',
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 6),
        Text(
          skill.description,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _PackageInfo extends StatelessWidget {
  const _PackageInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: kDefaultCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Packages & Other Skills',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Frontend: Flutter, QT '),
          Text('Database: SQLite, Firebase'),
          Text('Version Control: Git, GitHub'),
          Text(
            'Packages: GetX, Riverpod, Go_Router, Hooks, easy_localization, Retrofit 등',
          ),
          Text(
            'Collaboration Tool: Jira, Figma, Notion, Flow',
          ),
        ],
      ),
    );
  }
}
