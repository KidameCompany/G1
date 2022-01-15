import 'package:flutter/material.dart';
import 'package:g1/animations/animated_logo.dart';
import 'package:g1/kidame_components/play_card.dart';
import 'package:g1/layouts/homepage_layout.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HPLayout().appBar(),
      body: HPLayout().create(context, [
        AnimatedLogo(controller: _controller),
        const SizedBox(
          height: 120.0,
        ),
        PlayCard().create(),
      ]),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Sample Code'),
    //   ),
    //   body: Center(child: Text('You have pressed the button $_count times.')),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () => setState(() => _count++),
    //     tooltip: 'Increment Counter',
    //     child: const Icon(Icons.add),
    //   ),
    // );
  }
}
