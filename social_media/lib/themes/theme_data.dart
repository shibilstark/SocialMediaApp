// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social_media/themes/colors.dart';

class MyThemes {
  //  For Dark Theme

  static final DarkMode = ThemeData(
    scaffoldBackgroundColor: dModeBlack,
    appBarTheme: const AppBarTheme(
        backgroundColor: dModeBlack, foregroundColor: whiteColor),
    textTheme: TextTheme(
      // Appbar Title, Logo Texture,
      titleLarge: TextStyle(
        color: whiteColor,
        fontSize: 28.sm,
        fontWeight: FontWeight.bold,
      ),
      // Login Title,
      titleSmall: TextStyle(
        color: whiteColor,
        fontSize: 20.sm,
        fontWeight: FontWeight.w500,
      ),
      // FieldTexture,
      bodySmall: TextStyle(
        color: whiteColor,
        fontSize: 13.sm,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        color: primaryBlue.withOpacity(0.8),
        fontSize: 13.sm,
      ),
      bodyMedium: TextStyle(
        color: primaryBlue,
        fontSize: 13.sm,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: const Color.fromARGB(255, 143, 143, 143),
      size: 28.sm,
    ),
  );

  //  For Light Theme

  static final LightMode = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: whiteColor, foregroundColor: lightBlack),
      textTheme: TextTheme(
        // Appbar Title, Logo Texture,
        titleLarge: TextStyle(
          color: smoothBlack,
          fontSize: 28.sm,
          fontWeight: FontWeight.bold,
        ),
        // Login Title,
        titleSmall: TextStyle(
          color: lightBlack,
          fontSize: 20.sm,
          fontWeight: FontWeight.w500,
        ),
        // FieldTexture,
        bodySmall: TextStyle(
          color: lightBlack,
          fontSize: 13.sm,
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: primaryBlue.withOpacity(0.8),
          fontSize: 13.sm,
        ),
        bodyMedium: TextStyle(
          color: primaryBlue,
          fontSize: 13.sm,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: IconThemeData(
        color: primaryBlue,
        size: 28.sm,
      ));
}

//  Theme.of(context).textTheme.bodyLarge;
