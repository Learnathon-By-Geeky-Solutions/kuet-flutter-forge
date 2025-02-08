import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterforge/presentation/signup/signUp.provider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../infrastructure/navigation/routes.dart';
import '../../infrastructure/theme/assets/app.assets.dart';
import '../../infrastructure/theme/color/app.colors.dart';
import '../shared/widgets/custom_bg.dart';
import '../shared/widgets/custom_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignUpScreenProvider>(
        builder: (context, provider, child) {
          return CustomBg(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  ClipOval(
                    child: Image.asset(
                      AppAssets.light.appLogo,
                      height: MediaQuery.of(context).size.height * 0.20,
                      width: MediaQuery.of(context).size.height * 0.20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Create Account",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40),
                  TextField(
                    onChanged: (value) => provider.name = value,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: "Name",
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
                      labelText: "Password",
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
                    onChanged: (value) => provider.confirmPassword = value,
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
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
                      : CustomButton(
                          onTap: () async {
                            await provider.signUp();

                            Get.offAllNamed(Routes.SIGNIN);
                          },
                          title: 'Sign Up',
                          bgColor: Colors.white,
                          textColor: AppColors.light.primaryText,
                          width: MediaQuery.of(context).size.width * 0.85,
                        ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(Routes.FOODPAGE);
                    },
                    child: Text(
                      "Already have an account? Sign In",
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
          );
        },
      ),
    );
  }
}
