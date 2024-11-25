import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/images_string.dart';
import '../images/m_circular_image.dart';

class MUserProfileTile extends StatelessWidget {
  const MUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MCircularImage(
        image: MImageStrings.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Manoj HP',
        style: Theme
            .of(context)
            .textTheme
            .headlineMedium!
            .apply(color: MColors.white),
      ),
      subtitle: Text(
        'manojhp584@gmail.com',
        style:
        Theme
            .of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MColors.white),
      ),
      trailing: IconButton(
        onPressed:onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: MColors.white,
        ),
      ),
    );
  }
}
