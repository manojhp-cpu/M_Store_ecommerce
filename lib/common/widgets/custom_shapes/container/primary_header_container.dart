import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/colors.dart';
import '../../curved_edges/curved_edges_widgets.dart';
import 'circular_container.dart';

class MPrimaryHeaderContainer extends StatelessWidget {
  const MPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MCurvedEdgesWidget(
      child: Container(
        color: MColors.primary,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: MCircularContainer(
                backGroundColor: MColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: MCircularContainer(
                backGroundColor: MColors.white.withOpacity(0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
