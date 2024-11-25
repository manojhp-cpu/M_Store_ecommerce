import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/features/shop/screen/orders/widgets/order_item_list.dart';
import 'package:m_store/utils/constants/sizes.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(MSizes.defaultSpace),
        child: MOrderList(),
      ),
    );
  }
}


