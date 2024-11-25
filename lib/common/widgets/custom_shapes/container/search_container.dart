import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MSearchContainer extends StatelessWidget {
  const MSearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: MSizes.defaultSpace)
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          padding: const EdgeInsets.all(MSizes.md),
          width: MDeviceUtils.getScreenHeight(),
          decoration: BoxDecoration(
            color: showBackground
                ? isDark
                    ? MColors.dark
                    : MColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(MSizes.cardRadiusLg),
            border: showBorder
                ? Border.all(color: MColors.darkGrey.withOpacity(0.8))
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isDark ? MColors.light : MColors.dark,
              ),
              const SizedBox(
                width: MSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: isDark ? MColors.light : MColors.dark,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
