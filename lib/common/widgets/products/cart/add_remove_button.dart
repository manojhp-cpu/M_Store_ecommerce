import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../icons/m_circular_icon.dart';

class MProductQuantityAddRemove extends StatelessWidget {
  const MProductQuantityAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MCircularIcon(
          icon: Iconsax.minus,
          height: 40,
          width: 40,
          color: MHelperFunctions.isDarkMode(context)
              ? MColors.white
              : MColors.black,
          size: MSizes.md,
          backgroundColor: MHelperFunctions.isDarkMode(context)
              ? MColors.darkGrey
              : MColors.light,
          onPressed: () {},
        ),
        const SizedBox(
          width: MSizes.spaceBtwItems,
        ),
        Text(
          '2',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          width: MSizes.spaceBtwItems,
        ),
        MCircularIcon(
          icon: Iconsax.add,
          height: 40,
          width: 40,
          color: MColors.white,
          size: MSizes.md,
          backgroundColor: MColors.primary,
          onPressed: () {},
        ),
      ],
    );
  }
}
