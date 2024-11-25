import 'package:flutter/material.dart';
import 'package:m_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:m_store/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MChoiceChips extends StatelessWidget {
  const MChoiceChips({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = MHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: (value) => onSelected,
        labelStyle: TextStyle(color: selected ? MColors.white : null),
        avatar: isColor
            ? MCircularContainer(
                height: 50,
                width: 50,
                backGroundColor: MHelperFunctions.getColor(text)!,
              )
            : null,
        shape: isColor ? const CircleBorder() : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        backgroundColor: isColor ? MHelperFunctions.getColor(text) : null,
      ),
    );
  }
}
