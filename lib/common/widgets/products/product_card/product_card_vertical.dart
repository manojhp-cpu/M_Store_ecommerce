import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadow.dart';
import '../../custom_shapes/container/rounded_container.dart';
import '../../icons/m_circular_icon.dart';
import '../../images/m_rounded_image.dart';
import 'package:iconsax/iconsax.dart';

import '../../text/m_brand_title_with_verification.dart';
import '../../text/product_price_text.dart';
import '../../text/product_title_text.dart';

class MProductCardVertical extends StatelessWidget {
  const MProductCardVertical({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MSizes.productImageRadius),
          color: isDark ? MColors.darkerGrey : MColors.white,
        ),
        child: Column(
          children: [
            MRoundedContainer(
              padding: const EdgeInsets.all(1),
              backgroundColor: isDark ? MColors.dark : MColors.light,
              child: Stack(
                children: [
                  MRoundedImage(
                    imageUrl: MImageStrings.productIphone,
                    applyImageRadius: true,
                    backGroundColor: isDark ? MColors.dark : MColors.white,
                    // padding: EdgeInsets.only(top: 50),
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
                  MCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                    backgroundColor: isDark ? MColors.darkerGrey : MColors.light,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: MSizes.spaceBtwItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: MSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MProductTitleText(
                      title: 'Laptop Acer', textAlign: TextAlign.left),
                  SizedBox(height: MSizes.spaceBtwItems / 2),
                  MBrandTitleWithVerificationIcon(title: 'Acer'),
                ],
              ),
            ),


            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: MSizes.sm),
                    child: MProductPriceText(price: '45000'),
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
            )
          ],
        ),
      ),
    );
  }
}
