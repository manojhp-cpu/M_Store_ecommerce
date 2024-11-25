import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/brand/brand_card.dart';
import 'package:m_store/common/widgets/layout/grid_layout.dart';
import 'package:m_store/common/widgets/products/sortable/sortable_product.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/constants/sizes.dart';

import 'brand_products.dart';

class AllBrandScreen extends StatelessWidget {
  const AllBrandScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Brands'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              const MSectionHeading(
                title: 'Brands',
                showActionButton: false,
              ),
              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),
              MGridLayout(
                itemCount: 14,
                itemBuilder: (_, __) => MBrandCard(
                    showBorder: true,
                    noProducts: '227',
                    brandName: 'Apple',
                    onTap: ()=> Get.to(() => const BrandProductsScreen()),
                    productLogo: MImageStrings.appleLogo),
                mainAxisExtent: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
