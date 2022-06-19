import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media/global/theme.dart';
part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

const _ThemeSaveKey = "IsDark";

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<SetTheme>((event, emit) {
      emit(ThemeState(isDark: state.isDark, isRendering: true));
      if (event.currentTheme == MyAppTheme.Light) {
        _setThemeStatus(false);
        emit(ThemeState(isDark: true, isRendering: false));
      } else {
        _setThemeStatus(true);
        emit(ThemeState(isDark: false, isRendering: false));
      }
    });

    on<GetTheme>((event, emit) async {
      final sharedPreferences = await SharedPreferences.getInstance();
      final isDarkOn = sharedPreferences.getBool(_ThemeSaveKey);

      if (isDarkOn == null || isDarkOn == false) {
        emit(ThemeState(isDark: false, isRendering: false));
      } else {
        emit(ThemeState(isDark: true, isRendering: false));
      }
    });
  }
}

_setThemeStatus(bool value) async {
  final _sharedPrefs = await SharedPreferences.getInstance();
  await _sharedPrefs.setBool(_ThemeSaveKey, value);
}
