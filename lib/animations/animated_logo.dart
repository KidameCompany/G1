import 'package:flutter/material.dart';

class AnimatedLogo extends AnimatedWidget {
  const AnimatedLogo({Key? key, required AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value,
      child: const FlutterLogo(
        size: 200,
      ),
    );

    // final animation = listenable as Animation<double>;
    // return Center(
    //   child: Container(
    //     margin: const EdgeInsets.symmetric(vertical: 10),
    //     height: animation.value,
    //     width: animation.value,
    //     child: const FlutterLogo(),
    //   ),
    // );
  }
}
