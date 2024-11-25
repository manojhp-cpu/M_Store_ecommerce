import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class MRoundedImage extends StatelessWidget {
  const MRoundedImage({
    super.key,
    this.width,
    this.height,
    this.boxBorder,
    this.padding,
    this.onPressed,
    required this.imageUrl,
    this.fit = BoxFit.contain,
    this.isNetWorkImage = false,
    this.applyImageRadius = true,
    this.borderRadius = MSizes.md,
    this.backGroundColor = MColors.light,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? boxBorder;
  final Color backGroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetWorkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: boxBorder,
          color: backGroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            image: isNetWorkImage
                ? NetworkImage(imageUrl)
                : AssetImage(imageUrl) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
