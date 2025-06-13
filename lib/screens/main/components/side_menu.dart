import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'area_info_text.dart';
import 'coding.dart';
import 'my_info.dart';
import 'skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.controller,
    required this.sectionKeys,
  }) : super(key: key);

  final ScrollController controller;
  final Map<String, GlobalKey> sectionKeys;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                //height: MediaQuery.of(context).size.height * 0.45,
                child: MyInfo(),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: AreaInfoText(
                              title: "Residence",
                              text: "Korea",
                            ),
                          ),
                          Expanded(
                            child: AreaInfoText(
                              title: "City",
                              text: "Seoul",
                            ),
                          ),
                          Expanded(
                            child: AreaInfoText(
                              title: "Age",
                              text: age(1998).toString(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ...[
                    _navButton("Home", "home"),
                    _navButton("About", "about"),
                    _navButton("Skills", "skills"),
                    _navButton("Work", "work"),
                    _navButton("Experience", "experience"),
                    _navButton("Education", "education"),
                    _navButton("Blog", "blog"),
                    _navButton("Contact", "contact"),
                  ],
                  Divider(),
                  SizedBox(height: defaultPadding),
          Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      margin: EdgeInsets.only(top: defaultPadding),
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: kDefaultCardShadow,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            iconSize: 30,
                            onPressed: () {
                              goLink('https://github.com/minsawook');
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            iconSize: 30,
                            onPressed: () {
                              goLink('https://velog.io/@dnr111222');
                            },
                            icon: SvgPicture.asset("assets/icons/velog.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  goLink(String link) async {
    if (!await launch(link)) throw 'Could not launch $link';
  }

  int age(int year) {
    return DateTime.now().year - year;
  }

  Widget _navButton(String title, String keyName) {
    return TextButton(
      onPressed: () {
        final context = sectionKeys[keyName]?.currentContext;
        if (context != null) {
          Scrollable.ensureVisible(context, duration: defaultDuration);
        }
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title),
      ),
    );
  }
}
