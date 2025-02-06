import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/assets/app.assets.dart';
import '../../infrastructure/theme/color/app.colors.dart';
import '../shared/widgets/custom_bg.dart';
import '../shared/widgets/custom_button.dart';

import 'signIn.provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignInScreenProvider>(
        builder: (context, provider, child) {
          return CustomBg(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 80),
                    ClipOval(
                      child: Image.asset(
                        AppAssets.light.appLogo,
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.height * 0.30,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "SweetCRM",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 40),

                    TextField(
                      onChanged: (value) => provider.email = value,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(color: Colors.white70),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    TextField(
                      onChanged: (value) => provider.password = value,
                      obscureText: true,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        labelText: "KeyWord",
                        labelStyle: TextStyle(color: Colors.white70),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),

                    provider.isLoading
                        ? const CupertinoActivityIndicator()
                        : Align(
                      alignment: Alignment.bottomCenter,

                      child: CustomButton(
                                                onTap: () async {
                          await provider.signIn();
                          Get.offAllNamed(Routes.HOME);
                                                },
                                                title: 'Sign In',
                                                bgColor: Colors.white,
                                                textColor: AppColors.light.primaryText,
                                                width: MediaQuery.of(context).size.width * 0.85,
                                              ),
                        ),
                    const SizedBox(height: 20),

                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.SIGNUP);
                      },
                      child: Text(
                        "Don't have an account? Sign Up",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
