abstract class _CommonAssets {
  //static const String _assetsPath = 'assets/graphics/';
  static const _LogoAssets logo = _LogoAssets();
}
class _LightIcons {
  static const String _iconsPath = 'assets/graphics/icons';
  final uploadProfile = '$_iconsPath/upload_profile.png';

}

class _LightImages {
  static const String _iconsPath = 'assets/graphics/images';
  final homeBar = '$_iconsPath/homebar.png';

}

class _LightAssets extends _CommonAssets {
  static const String _assetsPath = 'assets/graphics/app_icon';
  final icons = _LightIcons();
  final images = _LightImages();
  final String appBg = '$_assetsPath/background.png';
  final String homeAppbar = 'assets/graphics/images/homebar.png';
  final String appLogo = '$_assetsPath/app_logo.png';
}

class _LogoAssets {
  static const String _assetsPath = 'assets/graphics/';

  const _LogoAssets();
}

abstract class AppAssets {
  static final light = _LightAssets();
}
