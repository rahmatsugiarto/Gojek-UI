import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../style/text_style.dart';

class ItemDashboard extends StatelessWidget {
  final String icon;
  final String text;
  final Color color;

  const ItemDashboard({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: SvgPicture.asset(icon),
        ),
        SizedBox(height: 9),
        Text(text, style: AppTextStyle.regular12()),
      ],
    );
  }
}
