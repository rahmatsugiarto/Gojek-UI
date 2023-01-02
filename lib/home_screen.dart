import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gojek_ui/data_dummy.dart';
import 'package:gojek_ui/widget/clear_glow_list.dart';
import 'package:gojek_ui/widget/icon_dasboard.dart';
import 'package:gojek_ui/widget/item_dashboard.dart';
import 'package:gojek_ui/widget/list_card_copay.dart';

import 'home_bloc/home_cubit.dart';
import 'home_bloc/home_state.dart';
import 'resources/assets.gen.dart';
import 'resources/colors.gen.dart';
import 'style/text_style.dart';
import 'widget/item_appbar.dart';

class HomeScreen extends StatelessWidget {
  final CarouselController _controller = CarouselController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = HomeCubit();
    return Scaffold(
      backgroundColor: ColorName.white,
      appBar: AppBar(
        toolbarHeight: 71,
        backgroundColor: ColorName.green2,
        elevation: 0,
        flexibleSpace: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 50,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
            decoration: BoxDecoration(
              color: ColorName.green1,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemAppBar(isSelected: true, label: 'Beranda'),
                ItemAppBar(isSelected: false, label: 'Promo'),
                ItemAppBar(isSelected: false, label: 'Pesanan'),
                ItemAppBar(isSelected: false, label: 'Chat'),
              ],
            ),
          ),
        ),
      ),
      body: ClearGlowList(
        child: SingleChildScrollView(
          child: BlocBuilder<HomeCubit, HomeState>(
            bloc: cubit,
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 23),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: ColorName.whiteBGSearch,
                              border: Border.all(
                                color: ColorName.greyBorder,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  child: Image.asset(
                                    Assets.images_uil_search.path,
                                    height: 20,
                                    width: 20,
                                  ),
                                ),
                                Text(
                                  "Cari layanan, makanan, & tujuan",
                                  style: AppTextStyle.regular14(
                                    color: ColorName.dark3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(80),
                                child: Image.asset(Assets.images_avatar.path),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                              ),
                            ),
                            Image.asset(
                              Assets.images_star.path,
                              height: 16,
                              width: 16,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    height: 96,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorName.blue1,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10, right: 8),
                          width: 2,
                          height: 24,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                                kListCardGopay.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    _controller.animateToPage(entry.key),
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 2),
                                  width: 2,
                                  height: 10,
                                  color: state.currentIndex == entry.key
                                      ? ColorName.white
                                      : ColorName.greyIndicator,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(
                          width: 127,
                          height: 96,
                          child: CarouselSlider(
                            items: kListCardGopay,
                            carouselController: _controller,
                            options: CarouselOptions(
                                initialPage: kListCardGopay.length,
                                enableInfiniteScroll: false,
                                scrollDirection: Axis.vertical,
                                onPageChanged: (index, reason) {
                                  cubit.setCurrentIndex(index);
                                }),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 18, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconDashboard(
                                  icon: Assets.images_arrow,
                                  text: Text(
                                    "Bayar",
                                    style: AppTextStyle.semibold14(
                                      color: ColorName.white,
                                    ),
                                  ),
                                ),
                                IconDashboard(
                                  icon: Assets.images_add,
                                  text: Text(
                                    "Top Up",
                                    style: AppTextStyle.semibold14(
                                      color: ColorName.white,
                                    ),
                                  ),
                                ),
                                IconDashboard(
                                  icon: Assets.images_eksplore,
                                  text: Text(
                                    "eksplore",
                                    style: AppTextStyle.semibold14(
                                      color: ColorName.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(27, 32, 27, 19),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ItemDashboard(
                              icon: Assets.images_go_ride,
                              text: "GoRide",
                              color: ColorName.greenItemDashboard,
                            ),
                            ItemDashboard(
                              icon: Assets.images_go_car,
                              text: "GoRide",
                              color: ColorName.greenItemDashboard,
                            ),
                            ItemDashboard(
                              icon: Assets.images_go_food,
                              text: "GoRide",
                              color: ColorName.red,
                            ),
                            ItemDashboard(
                              icon: Assets.images_go_send,
                              text: "GoRide",
                              color: ColorName.greenItemDashboard,
                            ),
                          ],
                        ),
                        const SizedBox(height: 29.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ItemDashboard(
                              icon: Assets.images_go_mart,
                              text: "GoMart",
                              color: ColorName.red,
                            ),
                            ItemDashboard(
                              icon: Assets.images_go_pulsa,
                              text: "GoPulsa",
                              color: ColorName.blue2,
                            ),
                            ItemDashboard(
                              icon: Assets.images_go_club,
                              text: "GoClub",
                              color: ColorName.white,
                            ),
                            ItemDashboard(
                              icon: Assets.images_lainnya,
                              text: "Lainnya",
                              color: ColorName.dark4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 65,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [
                          0,
                          0.4,
                        ],
                        colors: [
                          ColorName.blueBgXp.withOpacity(0.5),
                          ColorName.white,
                        ],
                      ),
                      border: Border.all(color: ColorName.greyBorder),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 4, 0, 4),
                          child: SvgPicture.asset(Assets.images_bg_xp),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 13),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(Assets.images_star_xp),
                                const SizedBox(width: 16.0),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "117 XP lagi ada Harta Karun",
                                      style: AppTextStyle.semibold14(),
                                    ),
                                    const SizedBox(height: 8.0),
                                    SizedBox(
                                      width: 209,
                                      child: LinearProgressIndicator(
                                        value: 0.7,
                                        color: ColorName.green1,
                                        backgroundColor:
                                            ColorName.greyIndicator,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                SvgPicture.asset(Assets.images_arrow_right)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Akses cepat",
                      style: AppTextStyle.bold18(),
                    ),
                  ),
                  Container(
                    height: 110,
                    margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorName.greyBorder),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: ListView.builder(
                      itemCount: 2,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 55,
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: Row(
                            children: [
                              Container(
                                height: 24,
                                width: 24,
                                margin: EdgeInsets.only(right: 12),
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  color: ColorName.greenItemDashboard,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: SvgPicture.asset(Assets.images_go_ride),
                              ),
                              Text("Pintu masuk motor, MNC Land"),
                              Spacer(),
                              SizedBox(
                                height: 18,
                                width: 18,
                                child: SvgPicture.asset(
                                  Assets.images_arrow_right,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Container(
                    height: 14,
                    width: 98,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Image.asset(Assets.images_gopaylater.path),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Lebih hemat pake GoPayLater 🤩",
                      style: AppTextStyle.bold16(),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Yuk, belanja di Tokopedia pake GoPay Later dan nikmatin cashback-nya~",
                      style: AppTextStyle.regular14(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: kDataBanner.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        final data = kDataBanner[index];
                        return LayoutBuilder(
                          builder: (BuildContext, BoxConstraints) {
                            log(BoxConstraints.minWidth.toString());
                            return Container(
                              margin: EdgeInsets.only(top: 24),
                              height: 285,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 24),
                                    height: BoxConstraints.maxHeight,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      border: Border.all(
                                        color: ColorName.greyBorder,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Container(
                                          height: 170,
                                          width: BoxConstraints.maxWidth,
                                          child: Image.asset(
                                            data.image,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 115,
                                        width: BoxConstraints.maxWidth,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 24),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              data.title,
                                              style: AppTextStyle.bold16(),
                                            ),
                                            const SizedBox(height: 8.0),
                                            Text(
                                              data.desc,
                                              style: AppTextStyle.regular14(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 64.0),
                  Image.asset(Assets.images_ornament.path),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
