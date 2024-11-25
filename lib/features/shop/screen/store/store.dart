import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/app_bar/tab_bar.dart';
import 'package:m_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:m_store/common/widgets/layout/grid_layout.dart';
import 'package:m_store/common/widgets/products/cart_menu_icon.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';
import 'package:m_store/features/shop/screen/store/widgtes/category_tab.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/brand/brand_card.dart';
import '../../../../utils/constants/images_string.dart';
import '../../../../utils/constants/sizes.dart';
import '../brand/all_brand.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackArrow: false,
          action: [
            MCartCounterIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: MHelperFunctions.isDarkMode(context)
                    ? MColors.black
                    : MColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ///Search Bar
                      const SizedBox(
                        height: MSizes.spaceBtwItems,
                      ),
                      const MSearchContainer(
                        text: 'Search in Store',
                        icon: Iconsax.search_normal,
                        showBorder: true,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: MSizes.spaceBtwSections,
                      ),

                      ///Featured Brands
                      MSectionHeading(
                        title: 'Featured Brands',
                        onPressed: () => Get.to(
                          () => const AllBrandScreen(),
                        ),
                      ),
                      const SizedBox(
                        height: MSizes.spaceBtwItems,
                      ),

                      MGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const MBrandCard(
                            showBorder: false,
                            brandName: 'Apple',
                            noProducts: '80',
                            productLogo: MImageStrings.appleLogo,
                          );
                        },
                      )
                    ],
                  ),
                ),
                bottom: const MTabBar(
                  tabs: [
                    Tab(text: 'Electronics'),
                    Tab(text: 'Sports'),
                    Tab(text: "Furniture's"),
                    Tab(text: 'Cloths '),
                    Tab(text: 'Cosmetics'),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              MCategoryTab(),
              MCategoryTab(),
              MCategoryTab(),
              MCategoryTab(),
              MCategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
