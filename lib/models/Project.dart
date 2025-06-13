class Recommendation {
  final String? title, description, github, playstore;

  Recommendation({this.title, this.description, this.github, this.playstore});
}

List<Recommendation> demo_projects = [
  Recommendation(
      title: "dev_Study_app",
      description: "개발자들을 위한 스터디 및 커뮤니티 어플리케이션.",
      github: 'https://github.com/minsawook/dev_Study_app'),
  Recommendation(
      title: "물범의 날씨",
      description: "날씨에 따라 물범의 이미지가 달라지며 날씨를 직관적으로 알려주는 날씨어플.",
      github: 'https://github.com/minsawook/weather_App'),
  Recommendation(
      title: "후다닥",
      description: "의류를 저장하여 의류 보관 및 관리를 수월하게 하고  코디를 미리 맞추어 코디에 걸리는 시간을 줄여줌",
      github: 'https://github.com/minsawook/Cloth-care-application'),
  Recommendation(
      title: "메뉴추천어플",
      description: "자신이 좋아하는 음식메뉴들을 저장한다음 랜덤으로 추천해줌",
      github: 'https://github.com/minsawook/Food-menu-recommendation-app'),
];
