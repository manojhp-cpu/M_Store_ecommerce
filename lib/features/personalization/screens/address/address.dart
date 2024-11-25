import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/features/personalization/screens/address/widgets/single_address.dart';
import 'package:m_store/utils/constants/colors.dart';
import 'package:m_store/utils/constants/sizes.dart';

import 'add_new_address.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Addresses'),
        showBackArrow: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: MColors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            children: [
              InkWell(
                child: MSingleAdresses(
                  selectedAddress: true,
                  onTap: (){},
                ),
              ),
              MSingleAdresses(
                selectedAddress: false,
                onTap: (){},

              ),
              MSingleAdresses(
                selectedAddress: false,
                onTap: (){},

              ),
              MSingleAdresses(
                selectedAddress: false,
                onTap: (){},

              ),
            ],
          ),
        ),
      ),
    );
  }
}
