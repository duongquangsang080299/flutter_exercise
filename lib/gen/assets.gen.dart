/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.svg
  String get background => 'assets/images/background.svg';

  /// File path: assets/images/btnNotifications.svg
  String get btnNotifications => 'assets/images/btnNotifications.svg';

  /// File path: assets/images/clubLogo.svg
  String get clubLogo => 'assets/images/clubLogo.svg';

  /// File path: assets/images/favouritePlayer.svg
  String get favouritePlayer => 'assets/images/favouritePlayer.svg';

  /// File path: assets/images/logoSplashScreen.svg
  String get logoSplashScreen => 'assets/images/logoSplashScreen.svg';

  /// File path: assets/images/logofloatingbutton.svg
  String get logofloatingbutton => 'assets/images/logofloatingbutton.svg';

  /// File path: assets/images/placeholder.svg
  String get placeholder => 'assets/images/placeholder.svg';

  /// File path: assets/images/player.svg
  String get player => 'assets/images/player.svg';

  /// File path: assets/images/player3.svg
  String get player3 => 'assets/images/player3.svg';

  /// File path: assets/images/playerone.svg
  String get playerone => 'assets/images/playerone.svg';

  /// File path: assets/images/stadium.svg
  String get stadium => 'assets/images/stadium.svg';

  /// File path: assets/images/stadiumtranfor.svg
  String get stadiumtranfor => 'assets/images/stadiumtranfor.svg';

  /// List of all assets
  List<String> get values => [
        background,
        btnNotifications,
        clubLogo,
        favouritePlayer,
        logoSplashScreen,
        logofloatingbutton,
        placeholder,
        player,
        player3,
        playerone,
        stadium,
        stadiumtranfor
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
    String? package,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
