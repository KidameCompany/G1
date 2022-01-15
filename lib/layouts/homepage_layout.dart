import 'package:flutter/material.dart';

class HPLayout {
  AnimatedContainer create(BuildContext context, List<Widget> children) {
    double screenWidth = MediaQuery.of(context).size.width;
    return AnimatedContainer(
        width: screenWidth,
        alignment: Alignment.center,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: Container(
          width: screenWidth,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFF701ebd),
            Color(0xFFe17763),
            Color(0xFF873bcc),
            Color(0xFFfe4a97),
            Color(0xFF68998c),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        ));
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: const Text('English Friend'),
      centerTitle: true,
    );
  }
}
