import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/utils/constants/enum.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import 'm_brand_title_text.dart';

class MBrandTitleWithVerificationIcon extends StatelessWidget {
  const MBrandTitleWithVerificationIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ),
        const SizedBox(
          width: MSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: MSizes.iconXs,
        )
      ],
    );
  }
}
