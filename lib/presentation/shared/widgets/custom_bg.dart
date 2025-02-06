import 'package:flutter/material.dart';
import 'package:flutterforge/presentation/shared/extension.dart';

import '../../../infrastructure/theme/assets/app.assets.dart';

class CustomBg extends StatelessWidget {
  final Widget? child;
  const CustomBg({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.screenHeight,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.light.appBg),
              fit: BoxFit.cover
          ),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff091970),
                Color(0xff006DFD),
              ]
          )
      ),
      child: child,
    );
  }
}