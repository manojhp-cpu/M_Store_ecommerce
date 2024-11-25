import 'package:flutter/material.dart';
import 'package:m_store/utils/constants/sizes.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MSettingsMenuTile extends StatelessWidget {
  const MSettingsMenuTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.leadingIcon,
    this.onPressed,
    this.trailing,
  });

  final String title, subTitle;
  final IconData leadingIcon;
  final VoidCallback? onPressed;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final isDark = MHelperFunctions.isDarkMode(context);
    return ListTile(
      leading: Icon(
        leadingIcon,
        color: MColors.primary,
        size: MSizes.iconLg,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.labelMedium!.apply(
              color: isDark ? MColors.darkGrey : MColors.darkerGrey,
            ),
      ),
      onTap: onPressed,
      trailing: trailing,
    );
  }
}
