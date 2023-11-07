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

  /// File path: assets/images/arena.svg
  String get arena => 'assets/images/arena.svg';

  /// File path: assets/images/icon_back.svg
  String get iconBack => 'assets/images/icon_back.svg';

  /// File path: assets/images/icon_calender.svg
  String get iconCalender => 'assets/images/icon_calender.svg';

  /// File path: assets/images/icon_cup.svg
  String get iconCup => 'assets/images/icon_cup.svg';

  /// File path: assets/images/icon_fixtures.svg
  String get iconFixtures => 'assets/images/icon_fixtures.svg';

  /// File path: assets/images/icon_home.svg
  String get iconHome => 'assets/images/icon_home.svg';

  /// File path: assets/images/icon_menu.svg
  String get iconMenu => 'assets/images/icon_menu.svg';

  /// File path: assets/images/icon_notification.svg
  String get iconNotification => 'assets/images/icon_notification.svg';

  /// File path: assets/images/icon_right_arrow.svg
  String get iconRightArrow => 'assets/images/icon_right_arrow.svg';

  /// File path: assets/images/icon_shop.svg
  String get iconShop => 'assets/images/icon_shop.svg';

  /// File path: assets/images/icon_tickets.svg
  String get iconTickets => 'assets/images/icon_tickets.svg';

  /// File path: assets/images/icon_ticketss.svg
  String get iconTicketss => 'assets/images/icon_ticketss.svg';

  /// File path: assets/images/icon_youtube.svg
  String get iconYoutube => 'assets/images/icon_youtube.svg';

  /// File path: assets/images/image_user.png
  AssetGenImage get imageUser =>
      const AssetGenImage('assets/images/image_user.png');

  /// File path: assets/images/jame_player.png
  AssetGenImage get jamePlayer =>
      const AssetGenImage('assets/images/jame_player.png');

  /// File path: assets/images/logo_match.png
  AssetGenImage get logoMatch =>
      const AssetGenImage('assets/images/logo_match.png');

  /// File path: assets/images/logo_match_detail.png
  AssetGenImage get logoMatchDetail =>
      const AssetGenImage('assets/images/logo_match_detail.png');

  /// File path: assets/images/logo_second_match.png
  AssetGenImage get logoSecondMatch =>
      const AssetGenImage('assets/images/logo_second_match.png');

  /// File path: assets/images/logo_splash_screen.png
  AssetGenImage get logoSplashScreen =>
      const AssetGenImage('assets/images/logo_splash_screen.png');

  /// File path: assets/images/logo_sport.png
  AssetGenImage get logoSport =>
      const AssetGenImage('assets/images/logo_sport.png');

  /// File path: assets/images/player_fifth.png
  AssetGenImage get playerFifth =>
      const AssetGenImage('assets/images/player_fifth.png');

  /// File path: assets/images/player_first.png
  AssetGenImage get playerFirst =>
      const AssetGenImage('assets/images/player_first.png');

  /// File path: assets/images/player_fourth.png
  AssetGenImage get playerFourth =>
      const AssetGenImage('assets/images/player_fourth.png');

  /// File path: assets/images/player_match.png
  AssetGenImage get playerMatch =>
      const AssetGenImage('assets/images/player_match.png');

  /// File path: assets/images/player_second.png
  AssetGenImage get playerSecond =>
      const AssetGenImage('assets/images/player_second.png');

  /// File path: assets/images/player_third.png
  AssetGenImage get playerThird =>
      const AssetGenImage('assets/images/player_third.png');

  /// File path: assets/images/soccer_stadium.png
  AssetGenImage get soccerStadium =>
      const AssetGenImage('assets/images/soccer_stadium.png');

  /// File path: assets/images/stadium.png
  AssetGenImage get stadium => const AssetGenImage('assets/images/stadium.png');

  /// List of all assets
  List<dynamic> get values => [
        arena,
        iconBack,
        iconCalender,
        iconCup,
        iconFixtures,
        iconHome,
        iconMenu,
        iconNotification,
        iconRightArrow,
        iconShop,
        iconTickets,
        iconTicketss,
        iconYoutube,
        imageUser,
        jamePlayer,
        logoMatch,
        logoMatchDetail,
        logoSecondMatch,
        logoSplashScreen,
        logoSport,
        playerFifth,
        playerFirst,
        playerFourth,
        playerMatch,
        playerSecond,
        playerThird,
        soccerStadium,
        stadium
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
