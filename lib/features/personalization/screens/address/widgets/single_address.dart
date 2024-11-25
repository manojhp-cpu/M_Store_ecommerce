import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class MSingleAdresses extends StatelessWidget {
  const MSingleAdresses({
    super.key,
    required this.selectedAddress,
    required this.onTap,
  });

  final bool selectedAddress;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: MSizes.md),
      child: InkWell(
        onTap: onTap, // Add your tap action here
        borderRadius: BorderRadius.circular(MSizes.md), // Match rounded container's border
        child: MRoundedContainer(
          width: double.infinity,
          showBorder: true,
          padding: const EdgeInsets.all(MSizes.md),
          backgroundColor: selectedAddress
              ? MColors.primary.withOpacity(0.5)
              : Colors.transparent,
          borderColor: MColors.darkGrey,
          child: Stack(
            children: [
              Positioned(
                right: 5,
                top: 0,
                child: Icon(
                  selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress
                      ? isDark
                      ? MColors.light
                      : MColors.dark
                      : null,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Manoj',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: MSizes.sm / 2,
                  ),
                  Text(
                    '+91-6361337631',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: MSizes.sm / 2,
                  ),
                  const Text(
                    'Hosaundavadi,KRS,SR Patna,Mandya-571607',
                    softWrap: true,
                  ),
                  const Text('India')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
