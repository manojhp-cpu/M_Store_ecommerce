import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:m_store/common/widgets/text/section_heading.dart';
import 'package:m_store/features/shop/screen/product_details/widgtes/bottom_add_to_cart_widget.dart';
import 'package:m_store/features/shop/screen/product_details/widgtes/product_attributes.dart';
import 'package:m_store/features/shop/screen/product_details/widgtes/product_image_slider.dart';
import 'package:m_store/features/shop/screen/product_details/widgtes/product_meta_data.dart';
import 'package:m_store/features/shop/screen/product_details/widgtes/product_rating_and_sharing.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';
import '../product_review/product_review.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product image Slider
            const MProductImageSlider(),

            ///Product Details
            Padding(
              padding: const EdgeInsets.only(
                right: MSizes.defaultSpace,
                left: MSizes.defaultSpace,
                bottom: MSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// Ratings and share
                  const MRatingsAndShare(),

                  /// -- Price, title, stock, & Brand
                  const ProductMetaData(),

                  ///Attributes
                  const MProductAttributes(),

                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),

                  /// --CheckOut Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Check out'),
                    ),
                  ),

                  const SizedBox(
                    height: MSizes.spaceBtwSections,
                  ),

                  /// --Description
                  const MSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: MSizes.spaceBtwItems,
                  ),

                  const ReadMoreText(
                    'The iPhone is a sleek, high-performance smartphone designed by Apple. It features a premium build, seamless integration with iOS, a vibrant Retina display, ',
                    trimLength: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'less',
                    trimCollapsedText: 'Show more',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(
                    height: MSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MSectionHeading(
                        title: 'Reviews(19)',
                        showActionButton: false,

                      ),
                      IconButton(
                        onPressed: () => Get.to(
                          () => const ProductReviewScreen(),
                        ),
                        icon: const Icon(Iconsax.arrow_right_3),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
