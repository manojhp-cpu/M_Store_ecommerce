import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/utils/constants/sizes.dart';

class MProfileMenu extends StatelessWidget {
  const MProfileMenu({
    super.key,
    required this.title,
    required this.value,
    required this.onPressed,
  });

  final String title, value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: MSizes.spaceBtwItems / 1.5),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Iconsax.arrow_right_34),
          ],
        ),
      ),
    );
  }
}
