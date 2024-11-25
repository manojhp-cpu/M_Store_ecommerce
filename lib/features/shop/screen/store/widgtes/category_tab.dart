import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/layout/grid_layout.dart';
import 'package:m_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/images_string.dart';
import '../../../../../utils/constants/sizes.dart';

class MCategoryTab extends StatelessWidget {
  const MCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              const MBrandShowCase(
                images: [
                  MImageStrings.productIphone,
                  MImageStrings.productIphone,
                  MImageStrings.productIphone,
                ],
              ),
              const MBrandShowCase(
                images: [
                  MImageStrings.productIphone,
                  MImageStrings.productIphone,
                  MImageStrings.productIphone,
                ],
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              ///Products
              MSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              MGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MProductCardVertical())
            ],
          ),
        ),
      ],
    );
  }
}
