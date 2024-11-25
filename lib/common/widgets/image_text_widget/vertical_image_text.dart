import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

class TVerticalImageText extends StatelessWidget {
  const TVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = Colors.white,
    this.backGroundColor,
    this.onPressed,
  });

  final String image, title;
  final Color textColor;
  final Color? backGroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: MSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              height: 56,
              width: 56,
              padding: const EdgeInsets.all(MSizes.sm),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color:
                backGroundColor ?? (isDark ? MColors.dark : MColors.light),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: isDark ? MColors.light : MColors. dark,
                ),
              ),
            ),
            const SizedBox(
              height: MSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .apply(color: textColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
