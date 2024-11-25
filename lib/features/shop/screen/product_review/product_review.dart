import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/app_bar/appbar.dart';
import 'package:m_store/features/shop/screen/product_review/widgets/rating_progress_indicator.dart';
import 'package:m_store/features/shop/screen/product_review/widgets/user_review_card.dart';
import '../../../../common/widgets/products/ratings/product_start_ratings.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings & reviews are verified and are from people who use the same type of device that you use',
              ),
              const SizedBox(
                height: MSizes.spaceBtwItems,
              ),

              ///Overall Product Ratings
              const MOverAllProductRating(),
              const MProductStarRatings(
                ratings: 4,
              ),
              Text(
                '12,151',
                style: Theme.of(context).textTheme.bodyLarge,
              ),

              const SizedBox(
                height: MSizes.spaceBtwSections,
              ),

              /// User Review List
              const MUserReviewCard(),
              const MUserReviewCard(),
              const MUserReviewCard(),
              const MUserReviewCard(),
              const MUserReviewCard(),
              const MUserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}


