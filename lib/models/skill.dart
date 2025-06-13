class Skill {
  final String name;
  final double level; // 0..1
  final String description;

  Skill({required this.name, required this.level, required this.description});
}

final List<Skill> skills = [
  Skill(
    name: 'Flutter',
    level: 0.7,
    description: '대학생 때 모든 플랫폼을 하나의 코드베이스로 개발할 수 있다는 점에 매력을 느껴 학습을 시작했습니다. '
        'UI 개발뿐만 아니라 REST API 연동, 상태관리, 아키텍쳐 설계 등 폭넓은 경험이 있습니다.',
  ),
  Skill(
    name: 'Firebase',
    level: 0.5,
    description: 'Firebase Authentication을 통한 SSO 구현, FCM을 활용한 푸시 알림, '
        'Firestore 기반 실시간 데이터베이스, 앱 배포(Distribution) 및 Crashlytics 사용 경험이 있습니다.',
  ),
  Skill(
    name: 'Qt',
    level: 0.3,
    description: 'C++ 기반 Qt 프레임워크를 이용해 임베디드 장비의 UI 및 기능을 개발한 경험이 있습니다. '
        '직접 하드웨어와 연동되는 인터페이스를 구성하고 디버깅한 경험도 포함됩니다.',
  ),
  Skill(
    name: 'Git',
    level: 0.6,
    description: '모든 프로젝트의 형상 관리를 GitHub로 진행하였고, 팀 협업 시에도 GitHub 기반 워크플로우를 적용했습니다. '
        '또한 GitHub Pages를 활용해 블로그 및 포트폴리오 사이트를 관리하고 있습니다.',
  ),
];
