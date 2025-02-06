import 'dart:ui';

abstract class AppColors {
  static final light = _LightColors();
  static final extra = _ExtraColors();
}

class _LightColors {
  final favouriteColor = const Color(0xFFFF9F41);
  final Color primaryBg = const Color(0xFF0029D0);
  final Color darkBlue = const Color(0xFF091970);
  final Color lightBlue = const Color(0xFF4C79FF);
  final Color primaryText = const Color(0xFF235CE6);
  final Color lightYellow = const Color(0xFFF4F4F4);
  final Color lightGreen = const Color(0xFF03DC8E);
  final Color red = const Color(0xFFAA1527);
  final Color deepShadow = const Color(0xFFFF4248);
  final Color lightShadow = const Color(0xFFFF744E);
  final Color dropdown = const Color(0xFFEFEFEF);
  final Color navbarDeepBlue = const Color(0xFF2940CD);
  final Color navbarLightBlue = const Color(0xFF1F78FF);
  final Color lightBg = const Color(0xFFF2F2F2);
  final Color textfieldBg = const Color(0xFFE4E4E4);
  final Color optionBg = const Color(0xFFF4F4F4);
  final Color shadow = const Color(0xFFC1C1C1).withOpacity(0.33);
  //////////
  final Color secondaryText = const Color(0xFF181A1F);
  final Color cardColor = const Color(0xFFFFFFFF);
  final Color bodyText = const Color(0xFF181A1F);
  final Color success = const Color(0xff22b765);
  final Color error = const Color(0xffe85356);
}

class _ExtraColors {
  final Color tileBlue = const Color(0xff17CEE7);
  final Color tileGreen = const Color(0xff99D7DB);
  final Color tileOrange = const Color(0xffEEC1C1);
  final Color tilePurple = const Color(0xffC7C1EE);
}
