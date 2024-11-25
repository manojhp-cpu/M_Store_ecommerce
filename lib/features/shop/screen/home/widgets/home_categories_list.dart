import 'package:flutter/material.dart';

import '../../../../../common/widgets/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/images_string.dart';

class MHomeCategories extends StatelessWidget {
  const MHomeCategories({
    super.key, this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return TVerticalImageText(
            image: MImageStrings.phoneIcon,
            title: 'Mobile Categories',
            onPressed: onPressed,
          );
        },
      ),
    );
  }
}

