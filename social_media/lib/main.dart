import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/login/login_screen.dart';
import 'package:social_media/presentation/reels/reels_screen.dart';
import 'package:social_media/presentation/sign_up/sign_up_screen.dart';
import 'package:social_media/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(414, 896),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                appBarTheme: AppBarTheme(
                    backgroundColor: whiteColor, foregroundColor: smoothBlack)),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          );
        });
  }
}
