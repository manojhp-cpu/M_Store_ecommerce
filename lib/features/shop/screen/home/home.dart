import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/features/shop/screen/home/widgets/home_app_bar.dart';
import 'package:m_store/features/shop/screen/home/widgets/home_categories_list.dart';
import 'package:m_store/features/shop/screen/home/widgets/promo_slider.dart';
import 'package:m_store/features/shop/screen/sub_category/sub_category.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_card/product_card_vertical.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/images_string.dart';
import '../all_products/all_products.dart';
import '../product_details/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MPrimaryHeaderContainer(
              child: Column(
                children: [
                  const MHomeAppBar(),

                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),

                  ///Search Bar
                  MSearchContainer(
                    text: 'search in store',
                    icon: Iconsax.search_normal,
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwItems,
                  ),

                  //Categories list
                  Padding(
                    padding: const EdgeInsets.only(left: MSizes.defaultSpace),
                    child: Column(
                      children: [
                        const MSectionHeading(
                          title: 'Popular Categories',
                          textColor: MColors.white,
                          showActionButton: false,
                        ),
                        const SizedBox(
                          height: MSizes.spaceBtwItems,
                        ),

                        // Categories
                        MHomeCategories(
                          onPressed: () => Get.to(() => const SubCategoryScreen()),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(MSizes.defaultSpace),
              child: Column(
                children: [
                  const MPromoSlider(
                    banners: [
                      MImageStrings.banner1,
                      MImageStrings.banner2,
                      MImageStrings.banner3,
                      MImageStrings.banner4,
                      MImageStrings.banner5,
                      MImageStrings.banner6,
                    ],
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwSections / 2,
                  ),
                  MSectionHeading(
                    title: 'Popular Products',
                    onPressed: () => Get.to(() => const AllProductsScreen()),
                  ),
                  MGridLayout(
                    itemCount: 6,
                    itemBuilder: (_, ind) => MProductCardVertical(
                      onTap: () => Get.to(() => const ProductDetailsScreen()),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
