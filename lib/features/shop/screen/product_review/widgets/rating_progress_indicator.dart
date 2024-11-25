import 'package:flutter/material.dart';
import 'package:m_store/features/shop/screen/product_review/widgets/progress_indicator_and_ratings.dart';

class MOverAllProductRating extends StatelessWidget {
  const MOverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            '4.8',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              MRatingProgressIndicator(text: '5',value: 0.9,),
              MRatingProgressIndicator(text: '4',value: 0.7,),
              MRatingProgressIndicator(text: '3',value: 0.5,),
              MRatingProgressIndicator(text: '2',value: 0.3,),
              MRatingProgressIndicator(text: '1',value: 0.2,),
            ],
          ),
        )
      ],
    );
  }
}