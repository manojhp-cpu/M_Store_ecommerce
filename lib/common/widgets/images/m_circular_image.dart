import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MCircularImage extends StatelessWidget {
  const MCircularImage({
    super.key,
    this.boxFit = BoxFit.cover,
    required this.image,
    this.overLayColor,
    this.backGroundColor,
    this.isNetWorkImage = false,
    this.width = 56,
    this.height = 56,
    this.padding = MSizes.sm,
  });

  final BoxFit? boxFit;
  final String image;
  final Color? overLayColor;
  final Color? backGroundColor;
  final bool isNetWorkImage;
  final double? width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
          color: backGroundColor ??
              (MHelperFunctions.isDarkMode(context)
                  ? MColors.black
                  : MColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Image(
          image: isNetWorkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: overLayColor,
        ),
      ),
    );
  }
}
