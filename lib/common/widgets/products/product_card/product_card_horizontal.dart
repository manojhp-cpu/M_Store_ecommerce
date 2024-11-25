import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:m_store/common/widgets/icons/m_circular_icon.dart';
import 'package:m_store/common/widgets/images/m_rounded_image.dart';
import 'package:m_store/common/widgets/text/m_brand_title_with_verification.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../text/product_price_text.dart';
import '../../text/product_title_text.dart';

class MProductCardHorizontal extends StatelessWidget {
  const MProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MSizes.productImageRadius),
        color: isDark ? MColors.darkerGrey : MColors.softGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MRoundedContainer(
            height: 120,
            // padding: EdgeInsets.all(MSizes.sm),
            backgroundColor: isDark ? MColors.dark : MColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: MRoundedImage(
                    imageUrl: MImageStrings.footBall,
                    padding: const EdgeInsets.all(MSizes.sm),
                    backGroundColor: isDark ? MColors.darkContainer : MColors.lightContainer,
                  ),
                ),
                Positioned(
                  top: 12,
                  child: MRoundedContainer(
                    radius: MSizes.cardRadiusMd,
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
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: MCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(
                top: MSizes.sm,
                left: MSizes.sm / 3,
              ),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallSize: true,
                      ),
                      SizedBox(height: MSizes.spaceBtwItems / 2),
                      MBrandTitleWithVerificationIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: MProductPriceText(price: '450'),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: MColors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MSizes.cardRadiusMd),
                            bottomRight:
                                Radius.circular(MSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          height: MSizes.iconLg * 1.2,
                          width: MSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: MColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
