import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class MSectionHeading extends StatelessWidget {
  const MSectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = 'View all',
    this.showActionButton = true,
    this.textColor,
    this.onPressed,
    this.buttonTextColor,
  });

  final String title, buttonTitle;
  final bool? showActionButton;
  final Color? textColor;
  final void Function()? onPressed;
  final Color? buttonTextColor;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
        ),
        if (showActionButton!)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
              style: Theme.of(context).textTheme.labelLarge!.apply(
                    color: isDark ? MColors.light : MColors.dark,
                  ),
            ),
          ),
      ],
    );
  }
}
