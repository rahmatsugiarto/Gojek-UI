/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************
import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  /// File path: assets/images/Ornament.png
  static const AssetGenImage images_ornament =
      AssetGenImage('assets/images/Ornament.png');

  /// File path: assets/images/add.svg
  static const String images_add = 'assets/images/add.svg';

  /// File path: assets/images/arrow-right.svg
  static const String images_arrow_right = 'assets/images/arrow-right.svg';

  /// File path: assets/images/arrow.svg
  static const String images_arrow = 'assets/images/arrow.svg';

  /// File path: assets/images/avatar.jpeg
  static const AssetGenImage images_avatar =
      AssetGenImage('assets/images/avatar.jpeg');

  /// File path: assets/images/banner1.png
  static const AssetGenImage images_banner1 =
      AssetGenImage('assets/images/banner1.png');

  /// File path: assets/images/banner2.png
  static const AssetGenImage images_banner2 =
      AssetGenImage('assets/images/banner2.png');

  /// File path: assets/images/banner3.png
  static const AssetGenImage images_banner3 =
      AssetGenImage('assets/images/banner3.png');

  /// File path: assets/images/bgXp.svg
  static const String images_bg_xp = 'assets/images/bgXp.svg';

  /// File path: assets/images/eksplore.svg
  static const String images_eksplore = 'assets/images/eksplore.svg';

  /// File path: assets/images/emote.png
  static const AssetGenImage images_emote =
      AssetGenImage('assets/images/emote.png');

  /// File path: assets/images/goCar.svg
  static const String images_go_car = 'assets/images/goCar.svg';

  /// File path: assets/images/goClub.svg
  static const String images_go_club = 'assets/images/goClub.svg';

  /// File path: assets/images/goFood.svg
  static const String images_go_food = 'assets/images/goFood.svg';

  /// File path: assets/images/goMart.svg
  static const String images_go_mart = 'assets/images/goMart.svg';

  /// File path: assets/images/goPulsa.svg
  static const String images_go_pulsa = 'assets/images/goPulsa.svg';

  /// File path: assets/images/goRide.svg
  static const String images_go_ride = 'assets/images/goRide.svg';

  /// File path: assets/images/goSend.svg
  static const String images_go_send = 'assets/images/goSend.svg';

  /// File path: assets/images/gopay-logo.png
  static const AssetGenImage images_gopay_logo =
      AssetGenImage('assets/images/gopay-logo.png');

  /// File path: assets/images/gopaylater.png
  static const AssetGenImage images_gopaylater =
      AssetGenImage('assets/images/gopaylater.png');

  /// File path: assets/images/lainnya.svg
  static const String images_lainnya = 'assets/images/lainnya.svg';

  /// File path: assets/images/star.png
  static const AssetGenImage images_star =
      AssetGenImage('assets/images/star.png');

  /// File path: assets/images/starXp.svg
  static const String images_star_xp = 'assets/images/starXp.svg';

  /// File path: assets/images/uil_search.png
  static const AssetGenImage images_uil_search =
      AssetGenImage('assets/images/uil_search.png');

  /// List of all assets
  List<dynamic> get values => [
        images_ornament,
        images_add,
        images_arrow_right,
        images_arrow,
        images_avatar,
        images_banner1,
        images_banner2,
        images_banner3,
        images_bg_xp,
        images_eksplore,
        images_emote,
        images_go_car,
        images_go_club,
        images_go_food,
        images_go_mart,
        images_go_pulsa,
        images_go_ride,
        images_go_send,
        images_gopay_logo,
        images_gopaylater,
        images_lainnya,
        images_star,
        images_star_xp,
        images_uil_search
      ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package = 'gojek_ui',
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => 'packages/gojek_ui/$_assetName';
}
