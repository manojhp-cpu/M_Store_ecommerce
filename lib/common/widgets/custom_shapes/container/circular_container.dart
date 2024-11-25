import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class MCircularContainer extends StatelessWidget {
  const  MCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 50,
    this.padding = 0,
    this.child,
    this.backGroundColor = MColors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backGroundColor;
  final EdgeInsets? margin;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backGroundColor,
      ),
      child: child,
    );
  }
}
