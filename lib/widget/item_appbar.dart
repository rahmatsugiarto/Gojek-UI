import 'package:flutter/material.dart';

import '../resources/colors.gen.dart';
import '../style/text_style.dart';

class ItemAppBar extends StatelessWidget {
  final bool isSelected;
  final String label;
  const ItemAppBar({
    Key? key,
    required this.isSelected,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 83,
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            )
          : null,
      child: Center(
        child: Text(
          label,
          style: AppTextStyle.regular12(
            color: isSelected ? ColorName.green1 : ColorName.white,
          ),
        ),
      ),
    );
  }
}
