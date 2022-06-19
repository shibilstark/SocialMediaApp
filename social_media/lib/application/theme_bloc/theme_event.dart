part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.started() = _Started;
  const factory ThemeEvent.setTheme({required MyAppTheme currentTheme}) =
      SetTheme;
  const factory ThemeEvent.getTheme() = GetTheme;
}
