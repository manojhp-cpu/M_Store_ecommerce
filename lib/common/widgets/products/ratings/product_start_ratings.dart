import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class MProductStarRatings extends StatelessWidget {
  const MProductStarRatings({
    super.key, required this.ratings,
  });

  final double ratings;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratings, // Provide a double value for rating, e.g., 4.5
      itemSize: 20, // Size of the star icons
      unratedColor: MColors.grey, // Color for unrated stars
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1,
        color: MColors.primary, // Color for rated stars
      ),
    );

  }
}