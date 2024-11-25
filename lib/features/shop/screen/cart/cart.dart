import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/features/shop/screen/cart/widgets/cart_items.dart';
import 'package:m_store/utils/constants/sizes.dart';

import '../check_out/check_out.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'My Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(MSizes.defaultSpace),
        child: MCartItems(showAddRemoveButton: true,),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(()=> const CheckOutScreen()),
          child: const Text("Check out ₹55000"),
        ),
      ),
    );
  }
}
