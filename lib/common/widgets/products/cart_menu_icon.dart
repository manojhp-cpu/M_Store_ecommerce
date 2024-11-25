import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MCartCounterIcon extends StatelessWidget {
  const MCartCounterIcon({
    super.key,
    required this.onPressed,
    this.iconColor,
  });

  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 3,
          top: 5,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: isDark ? MColors.light : MColors.dark,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: isDark ? MColors.dark : MColors.light,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
