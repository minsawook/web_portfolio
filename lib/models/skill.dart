class Skill {
  final String name;
  final double level; // 0..1
  final String description;

  Skill({required this.name, required this.level, required this.description});
}

final List<Skill> demoSkills = [
  Skill(name: 'Flutter', level: 0.7, description: 'Cross-platform UI toolkit'),
  Skill(name: 'Firebase', level: 0.3, description: 'Backend & realtime DB'),
  Skill(name: 'Qt', level: 0.3, description: 'C++ framework'),
  Skill(name: 'Dart', level: 0.7, description: 'Primary programming language'),
  Skill(name: 'Git', level: 0.3, description: 'Version control'),
  Skill(name: 'Java', level: 0.2, description: 'Additional language'),
];
