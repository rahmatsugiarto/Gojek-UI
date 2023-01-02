import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/colors.gen.dart';

class IconDashboard extends StatelessWidget {
  final String icon;
  final Text text;

  const IconDashboard({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 24,
          width: 24,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: ColorName.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: SvgPicture.asset(icon),
        ),
        SizedBox(height: 7),
        text,
      ],
    );
  }
}
