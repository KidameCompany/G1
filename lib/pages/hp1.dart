import 'package:flutter/material.dart';
import 'package:g1/animations/animated_logo.dart';
import 'package:g1/kidame_components/play_card.dart';
import 'package:g1/layouts/homepage_layout.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  static const String _title = 'English Friend';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: HP(),
    );
  }
}

class HP extends StatefulWidget {
  const HP({Key? key}) : super(key: key);

  @override
  State<HP> createState() => _HP();
}

class _HP extends State<HP> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  @override
  Widget build(BuildContext context) {
    // return AnimatedLogo(controller: _controller);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HPLayout().appBar(),
      body: HPLayout().create(context, [
        AnimatedLogo(
          controller: _controller,
        ),
        const SizedBox(
          height: 120.0,
        ),
        PlayCard().create(),
      ]),
    );
  }
}
