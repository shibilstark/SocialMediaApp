import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media/application/theme_bloc/theme_bloc.dart';
import 'package:social_media/domain/preferences/theme_preferences.dart';
import 'package:social_media/presentation/home/home_screen.dart';
import 'package:social_media/presentation/login/login_screen.dart';
import 'package:social_media/presentation/sign_up/sign_up_screen.dart';
import 'package:social_media/themes/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // if (!Hive.isAdapterRegistered(AppThemeModelAdapter().typeId)) {
  //   Hive.registerAdapter(AppThemeModelAdapter());
  // }
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
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => ThemeBloc(),
            ),
          ],
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              WidgetsBinding.instance!.addPostFrameCallback((_) {
                BlocProvider.of<ThemeBloc>(context).add(GetTheme());
              });
              return MaterialApp(
                theme: state.isDark == true
                    ? MyThemes.DarkMode
                    : MyThemes.LightMode,
                // theme: MyThemes.DarkMode,
                debugShowCheckedModeBanner: false,
                home: LoginScreen(),
              );
            },
          ),
        );
      },
    );
  }
}
