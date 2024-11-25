import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:m_store/features/shop/controllers/home_controller/home_controler.dart';

import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/images/m_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class MPromoSlider extends StatelessWidget {
  const MPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map(
            (url) => MRoundedImage(
              imageUrl:url,
            ),
          ).toList(),
        ),
        const SizedBox(
          height: MSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                MCircularContainer(
                  height: 5,
                  margin: const EdgeInsets.all(MSizes.sm),
                  width: 20,
                  backGroundColor: controller.carousalControllerIndex.value == i
                      ? MColors.primary
                      : MColors.grey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
