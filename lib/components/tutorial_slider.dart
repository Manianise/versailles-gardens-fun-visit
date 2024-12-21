import 'package:flutter/material.dart';

class TutorialPanel extends StatelessWidget {
  const TutorialPanel({super.key});

  @override
  Widget build(BuildContext context) {
        final TextStyle textStyle =
        Theme.of(context).textTheme.displayLarge!.copyWith(
              fontWeight: FontWeight.w500,
            );

    final Iterable<Widget> placeholderDigits =
        <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map<Widget>(
      (int n) {
        return Text('$n', style: textStyle);
      },
    );

    return Opacity(
      opacity: 0,
      child: Stack(children: placeholderDigits.toList()),
    );
  }
}

class TutorialSlider extends StatefulWidget {
  const TutorialSlider({super.key});

  @override
  State<TutorialSlider> createState() => _TutorialSliderState();
}

class _TutorialSliderState extends State<TutorialSlider>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}