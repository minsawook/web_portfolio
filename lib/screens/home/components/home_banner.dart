import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: secondaryColor.withOpacity(0.7)),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Image.asset(
              "assets/images/human.png",
              fit: BoxFit.cover,
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "안녕하세요",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: bodyTextColor,
                          )
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: bodyTextColor,
                          ),
                ),
                if (Responsive.isMobileLarge(context)) const SizedBox(height: defaultPadding / 2),
                MyBuildAnimatedText(),
                SizedBox(height: defaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context)) SizedBox(width: defaultPadding / 2),
          Text("앱으로 사람을 연결하는 개발자 민사욱 입니다."),
          Responsive.isMobile(context) ? Expanded(child: AnimatedText()) : AnimatedText(),
          if (!Responsive.isMobileLarge(context)) SizedBox(width: defaultPadding / 2),
          // if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "항상 새로운 기술에 도전합니다.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "신뢰를 가장 중요하게 생각합니다.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Flutter로 앱과 웹을 구축합니다.",
          speed: Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "뿌리깊은 mobile developer을 목표로 합니다.",
          speed: Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

/*class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: primaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}*/
