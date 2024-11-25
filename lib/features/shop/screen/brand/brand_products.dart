import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/brand/brand_card.dart';
import 'package:m_store/common/widgets/products/sortable/sortable_product.dart';
import 'package:m_store/utils/constants/images_string.dart';
import 'package:m_store/utils/constants/sizes.dart';

class BrandProductsScreen extends StatelessWidget {
  const BrandProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MAppBar(
        title: Text('Apple'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              MBrandCard(
                showBorder: true,
                noProducts: '227',
                brandName: 'apple',
                productLogo: MImageStrings.appleLogo,
              ),

              SizedBox(height: MSizes.spaceBtwSections,),

              MSortableProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
