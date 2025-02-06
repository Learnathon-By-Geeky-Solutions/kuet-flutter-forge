import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterforge/infrastructure/navigation/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../config.dart';
import '../../presentation/foodPage/food_page.dart';
import '../../presentation/signin/signIn.screen.dart';
import '../../presentation/socket_try/home-page.dart';
import '../../presentation/splash/splash.screen.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  EnvironmentsBadge({required this.child});

  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
      location: BannerLocation.topStart,
      message: env!,
      color: env == Environments.QAS ? Colors.blue : Colors.purple,
      child: child,
    )
        : SizedBox(child: child);
  }
}
class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MyHomePage(),
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.FOODPAGE,
      page: () => FoodPage(),
    ),
    GetPage(
      name: Routes.SIGNIN,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => FoodPage(),
    ),

  ];
}