import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterforge/presentation/splash/splashScreen.provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/assets/app.assets.dart';
import '../../infrastructure/theme/color/app.colors.dart';
import '../shared/widgets/custom_bg.dart';
import '../shared/widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<SplashScreenProvider>(context, listen: false).checkUserStatus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SplashScreenProvider>(
        builder: (context, provider, child) {
          return CustomBg(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "SweetCRM",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                ClipOval(
                  child: Image.asset(
                    AppAssets.light.appLogo,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.height * 0.35,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.17),

                provider.checkUser
                    ? Column(
                  children: [
                    CustomButton(
                      onTap: () {
                        Get.offAllNamed(Routes.SIGNIN);
                      },
                      title: 'Get Started',
                      bgColor: Colors.white,
                      textColor: AppColors.light.primaryText,
                      width: MediaQuery.of(context).size.width * 0.85,
                    ),
                    const SizedBox(height: 19),
                    Text(
                      "This is the Splash Screen ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "To getting more info Get Started",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
                    : const CupertinoActivityIndicator(),

                SizedBox(height: MediaQuery.of(context).size.height * 0.07),
              ],
            ),
          );
        },
      ),
    );
  }
}
