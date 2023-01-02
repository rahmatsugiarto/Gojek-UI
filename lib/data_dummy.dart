import 'package:gojek_ui/resources/assets.gen.dart';

List<BannerModel> kDataBanner = [
  BannerModel(
    image: Assets.images_banner1.path,
    title: "Makin Seru 🤩",
    desc: "Aktifkan & Sambungkan GoPay & GoPayLater di Tokopedia",
  ),
  BannerModel(
    image: Assets.images_banner2.path,
    title: "Makin Seru 🤩",
    desc: "Sambungin Akun ke Tokopedia, Banyakin Untung",
  ),
  BannerModel(
    image: Assets.images_banner3.path,
    title: "Makin Seru 🤩",
    desc: "Promo Belanja Online 10.10: Cashback hingga Rp100.000",
  ),
];

class BannerModel {
  final String image;
  final String title;
  final String desc;

  BannerModel({
    required this.image,
    required this.title,
    required this.desc,
  });
}
