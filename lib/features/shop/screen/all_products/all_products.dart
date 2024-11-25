import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/common/widgets/layout/grid_layout.dart';
import 'package:m_store/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../../../../common/widgets/products/sortable/sortable_product.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MAppBar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MSizes.defaultSpace),
          child: MSortableProduct(),
        ),
      ),
    );
  }
}


