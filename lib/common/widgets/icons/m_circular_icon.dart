import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class MCircularIcon extends StatelessWidget {
  const MCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = MSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Positioned(
      top: 8,
      right: 8,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: backgroundColor ??
              (isDark
                  ? MColors.black.withOpacity(0.9)
                  : MColors.white.withOpacity(0.9)),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
