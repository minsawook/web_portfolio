import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    this.onMenuTap,
  }) : super(key: key);

  final void Function(String id)? onMenuTap;

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
                    SizedBox(height: defaultPadding),
                    Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _MenuButton(
                          label: 'Career',
                          onTap: () => onMenuTap?.call('career'),
                        ),
                        _MenuButton(
                          label: 'Projects',
                          onTap: () => onMenuTap?.call('projects'),
                        ),
                        _MenuButton(
                          label: 'Toy Projects',
                          onTap: () => onMenuTap?.call('toys'),
                        ),
                        _MenuButton(
                          label: 'Posts',
                          onTap: () => onMenuTap?.call('posts'),
                        ),
                      ],
                    ),
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
}

class _MenuButton extends StatefulWidget {
  final String label;
  final VoidCallback? onTap;
  const _MenuButton({required this.label, this.onTap});

  @override
  State<_MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<_MenuButton> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: ListTile(
        title: Text(
          widget.label,
          style: TextStyle(
            color: _hover ? primaryColor : bodyTextColor,
            fontWeight: _hover ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        tileColor: _hover ? primaryColor.withOpacity(0.1) : Colors.transparent,
        onTap: widget.onTap,
      ),
    );
  }
}
