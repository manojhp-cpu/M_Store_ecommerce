import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';

import '../../../../utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Add new address'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(MSizes.defaultSpace),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Name', prefixIcon: Icon(Iconsax.user)),
                  expands: false,
                ),
                const SizedBox(
                  height: MSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      prefixIcon: Icon(Iconsax.mobile)),
                  expands: false,
                ),
                const SizedBox(
                  height: MSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'Street',
                            prefixIcon: Icon(Iconsax.building_31)),
                        expands: false,
                      ),
                    ),
                    const SizedBox(
                      width: MSizes.spaceBtwItems,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: const TextInputType.numberWithOptions(),
                        decoration: const InputDecoration(
                            labelText: 'Postal code',
                            prefixIcon: Icon(Iconsax.code)),
                        expands: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'City',
                            prefixIcon: Icon(Iconsax.building)),
                        expands: false,
                      ),
                    ),
                    const SizedBox(
                      width: MSizes.spaceBtwItems,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            labelText: 'State',
                            prefixIcon: Icon(Iconsax.activity)),
                        expands: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MSizes.spaceBtwInputFields,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Country', prefixIcon: Icon(Iconsax.global)),
                  expands: false,
                ),
                const SizedBox(
                  height: MSizes.spaceBtwInputFields,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
