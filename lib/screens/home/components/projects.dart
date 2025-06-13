import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';
import 'ProjectsCart.dart';

class Projects extends StatefulWidget {
  final ScrollController scrollController;
  const Projects({Key? key, required this.scrollController}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  late List<bool> _visible;

  @override
  void initState() {
    super.initState();
    _visible = List<bool>.filled(projects.length, false);
    widget.scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final index = (widget.scrollController.offset / 300).floor();
    for (int i = 0; i <= index && i < _visible.length; i++) {
      if (!_visible[i]) {
        setState(() => _visible[i] = true);
      }
    }
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: defaultPadding),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              return TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: _visible[index] ? 1 : 0),
                duration: defaultDuration,
                builder: (context, value, child) => Opacity(
                  opacity: value,
                  child: Transform.translate(
                    offset: Offset(0, 30 * (1 - value)),
                    child: child,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ProjectsCard(
                    recommendation: projects[index],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
