import 'package:flutter/material.dart';
import 'package:menuapp/components/myappbar.dart';

class HeaderImg extends StatelessWidget {
  const HeaderImg({
    Key? key,
    required this.image,
    required this.height,
  }) : super(key: key);

  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: (sizeWitoutAppbar(context) * 0.45) - sizeAppbar(),
          // height: sizeWitoutAppbar(context) * 0.45,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffE0A0D2), Colors.white.withOpacity(0.0)],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            child: Image.asset(
              image,
              height: height,
            ),
          ),
        ),
      ],
    );
  }
}
