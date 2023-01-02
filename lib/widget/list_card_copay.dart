import 'package:flutter/material.dart';

import '../resources/assets.gen.dart';
import '../resources/colors.gen.dart';
import '../style/text_style.dart';

List<Widget> kListCardGopay = [
  Container(
    height: 68,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorName.white,
    ),
  ),
  Container(
    height: 68,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: ColorName.white,
    ),
    child: Container(
      margin: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images_gopay_logo.path,
            height: 14,
            width: 57,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            "Rp12.379",
            style: AppTextStyle.bold16(),
          ),
          Text(
            "Klik & cek riwayat",
            style: AppTextStyle.semibold12(color: ColorName.green2),
          ),
        ],
      ),
    ),
  ),
];
