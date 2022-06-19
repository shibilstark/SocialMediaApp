part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({required bool isDark, required bool isRendering}) =
      _ThemeState;
  factory ThemeState.initial() =>
      const ThemeState(isDark: false, isRendering: false);
}
