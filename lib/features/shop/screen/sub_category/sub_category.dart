import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/images/m_rounded_image.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/product_card/product_card_horizontal.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'Sports',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              const MRoundedImage(
                imageUrl: MImageStrings.banner3,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),
              Column(
                children: [
                  MSectionHeading(
                    title: 'Sports Equipments',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => const SizedBox(
                        width: MSizes.spaceBtwItems,
                      ),
                      itemCount: 5,
                      itemBuilder: (_, index) => const MProductCardHorizontal(),
                    ),
                  ),
                  const SizedBox(height: MSizes.spaceBtwSections,),
                  MSectionHeading(
                    title: 'Sports Equipments',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => const SizedBox(
                        width: MSizes.spaceBtwItems,
                      ),
                      itemCount: 5,
                      itemBuilder: (_, index) => const MProductCardHorizontal(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
