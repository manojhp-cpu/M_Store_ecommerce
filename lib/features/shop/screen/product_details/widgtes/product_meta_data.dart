import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/text/m_brand_title_with_verification.dart';
import 'package:m_store/common/widgets/text/product_price_text.dart';
import 'package:m_store/common/widgets/text/product_title_text.dart';
import 'package:m_store/utils/constants/enum.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            MRoundedContainer(
              radius: MSizes.cardRadiusXs,
              backgroundColor: MColors.secondary.withOpacity(0.8),
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: MSizes.sm, vertical: MSizes.xs),
              child: Text(
                '25%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MColors.black),
              ),
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems,
            ),
            Text(
              '₹60000',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems,
            ),
            const MProductPriceText(
              price: '54,000',
              isLarge: true,
            ),
            const SizedBox(
              width: MSizes.spaceBtwItems / 1.5,
            ),
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),
        const MProductTitleText(title: 'iPhone 13 Pro Max'),
        const SizedBox(height: MSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            const MProductTitleText(title: 'Status'),
            const SizedBox(width: MSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium)
          ],
        ),
        const SizedBox(height: MSizes.spaceBtwItems),
        Row(
          children: [
            Image(
              image: const AssetImage(MImageStrings.appleLogo),
              width: 32,
              height: 32,
              color: isDark ? MColors.light : MColors.dark,
            ),
            const SizedBox(width: MSizes.spaceBtwItems / 1.5),
            const MBrandTitleWithVerificationIcon(
              title: 'Apple',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
