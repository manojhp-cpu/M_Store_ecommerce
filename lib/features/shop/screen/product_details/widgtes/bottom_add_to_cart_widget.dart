import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/icons/m_circular_icon.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';

class BottomAddToCartWidget extends StatelessWidget {
  const BottomAddToCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MSizes.defaultSpace,
        vertical: MSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: isDark ? MColors.darkContainer : MColors.lightContainer,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(MSizes.cardRadiusLg),
          topRight: Radius.circular(MSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              MCircularIcon(
                onPressed: () {},
                icon: Iconsax.minus,
                color: MColors.light,
                width: 40,
                height: 40,
                backgroundColor: MColors.darkGrey,
              ),
              const SizedBox(
                width: MSizes.spaceBtwItems,
              ),
              const Text('2'),
              const SizedBox(
                width: MSizes.spaceBtwItems,
              ),
              MCircularIcon(
                icon: Iconsax.add,
                color: MColors.light,
                width: 40,
                height: 40,
                onPressed: () {},
                backgroundColor: MColors.black,
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(MSizes.md),
              backgroundColor: MColors.black,
              side: const BorderSide(color: MColors.black),
            ),
            icon: const Icon(
              Iconsax.shopping_bag,
              color: Colors.white,
              size: MSizes.iconSm,
            ),
            // Icon
            label: const Text('Add to cart',
                style: TextStyle(color: Colors.white)), // Text
          )
        ],
      ),
    );
  }
}
