import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

String assetsPath = 'assets/rive/kidamelogo2.riv';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: KidameLogoAnimation(),
  ));
}

class KidameLogoAnimation extends StatefulWidget {
  const KidameLogoAnimation({Key? key}) : super(key: key);
  @override
  _KidameLogoAnimation createState() => _KidameLogoAnimation();
}

class _KidameLogoAnimation extends State<KidameLogoAnimation> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    // PlayButton ----  KidameLogo
    _controller = SimpleAnimation('KidameLogo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        RiveAnimation.asset(
          assetsPath,
          fit: BoxFit.fill,
          controllers: [_controller],
          onInit: (_) => setState(() {}),
        ),
      ],
    ));
  }
}
