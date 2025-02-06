// import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'presentation/socket_try/home-page.dart';
// import 'infrastructure/navigation/navigation.dart';
// import 'infrastructure/navigation/routes.dart';
//
// void main() async {
//   var initialRoute = await Routes.initialRoute;
//   WidgetsFlutterBinding.ensureInitialized();
//   // await DomainLayerDependencyInjectionContainer.init();
//
//   // MinRest.init("https://developer.quiztime.gamehubbd.com/api/v2.0");
//
//   runApp(Main(initialRoute));
// }
//
// class Main extends StatelessWidget {
//   final String initialRoute;
//
//   Main(this.initialRoute);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         fontFamily: GoogleFonts.poppins().fontFamily,
//       ),
//       initialRoute: initialRoute,
//       getPages: Nav.routes,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutterforge/presentation/signin/signIn.provider.dart';
import 'package:flutterforge/presentation/splash/splashScreen.provider.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var initialRoute = await Routes.initialRoute;

  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({Key? key, required this.initialRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SplashScreenProvider>(create: (_) => SplashScreenProvider(),),
        ChangeNotifierProvider<SignInScreenProvider>(create: (_) => SignInScreenProvider(),),

      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        initialRoute: initialRoute,
        getPages: Nav.routes,
      ),
    );
  }
}
