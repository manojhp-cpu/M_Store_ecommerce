import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/app_bar/appbar.dart';
import '../../../../../common/widgets/curved_edges/curved_edges_widgets.dart';
import '../../../../../common/widgets/icons/m_circular_icon.dart';
import '../../../../../common/widgets/images/m_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MProductImageSlider extends StatelessWidget {
  const MProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return MCurvedEdgesWidget(
      child: Container(
        color: isDark ? MColors.darkContainer : MColors.lightContainer,
        child: Stack(
          children: [
            //Main Large Image
            const SizedBox(
              height: 400,
              child: Padding(
                padding:
                EdgeInsets.all(MSizes.productImageRadius * 2.5),
                child: Center(
                  child: Image(
                    image: AssetImage(MImageStrings.productIphone),
                  ),
                ),
              ),
            ),

            //Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (_, index) => MRoundedImage(
                    width: 80,
                    backGroundColor:
                    isDark ? MColors.dark : MColors.white,
                    imageUrl: MImageStrings.productIphone,
                    boxBorder: Border.all(color: MColors.primary),
                    padding: const EdgeInsets.all(MSizes.sm),
                  ),
                  separatorBuilder: (_, __) => const SizedBox(
                    width: MSizes.spaceBtwItems,
                  ),
                ),
              ),
            ),

            const MAppBar(
              showBackArrow: true,
              action: [
                MCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}