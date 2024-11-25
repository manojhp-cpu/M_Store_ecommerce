import 'package:flutter/material.dart';
import 'package:m_store/utils/device/device_utility.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class MTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        isScrollable: true,
        indicatorColor: MColors.primary,
        unselectedLabelColor: MColors.grey,
        labelColor: MHelperFunctions.isDarkMode(context)
            ? MColors.white
            : MColors.dark,
        tabs:tabs,
      )
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MDeviceUtils.getAppBarHeight());
}
