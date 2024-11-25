import 'package:flutter/material.dart';

class MProductPriceText extends StatelessWidget {
  const MProductPriceText({
    super.key,
    required this.price,
    this.currencySign = '₹',
    this.isLarge = false,
    this.maxLine = 1,
    this.lineThrough = false,
  });

  final String price, currencySign;
  final bool isLarge;
  final int maxLine;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}
