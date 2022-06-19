// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MyAppTheme currentTheme) setTheme,
    required TResult Function() getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetTheme value) setTheme,
    required TResult Function(GetTheme value) getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ThemeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MyAppTheme currentTheme) setTheme,
    required TResult Function() getTheme,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetTheme value) setTheme,
    required TResult Function(GetTheme value) getTheme,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ThemeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$SetThemeCopyWith<$Res> {
  factory _$$SetThemeCopyWith(
          _$SetTheme value, $Res Function(_$SetTheme) then) =
      __$$SetThemeCopyWithImpl<$Res>;
  $Res call({MyAppTheme currentTheme});
}

/// @nodoc
class __$$SetThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$SetThemeCopyWith<$Res> {
  __$$SetThemeCopyWithImpl(_$SetTheme _value, $Res Function(_$SetTheme) _then)
      : super(_value, (v) => _then(v as _$SetTheme));

  @override
  _$SetTheme get _value => super._value as _$SetTheme;

  @override
  $Res call({
    Object? currentTheme = freezed,
  }) {
    return _then(_$SetTheme(
      currentTheme: currentTheme == freezed
          ? _value.currentTheme
          : currentTheme // ignore: cast_nullable_to_non_nullable
              as MyAppTheme,
    ));
  }
}

/// @nodoc

class _$SetTheme implements SetTheme {
  const _$SetTheme({required this.currentTheme});

  @override
  final MyAppTheme currentTheme;

  @override
  String toString() {
    return 'ThemeEvent.setTheme(currentTheme: $currentTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTheme &&
            const DeepCollectionEquality()
                .equals(other.currentTheme, currentTheme));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentTheme));

  @JsonKey(ignore: true)
  @override
  _$$SetThemeCopyWith<_$SetTheme> get copyWith =>
      __$$SetThemeCopyWithImpl<_$SetTheme>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MyAppTheme currentTheme) setTheme,
    required TResult Function() getTheme,
  }) {
    return setTheme(currentTheme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
  }) {
    return setTheme?.call(currentTheme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(currentTheme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetTheme value) setTheme,
    required TResult Function(GetTheme value) getTheme,
  }) {
    return setTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
  }) {
    return setTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
    required TResult orElse(),
  }) {
    if (setTheme != null) {
      return setTheme(this);
    }
    return orElse();
  }
}

abstract class SetTheme implements ThemeEvent {
  const factory SetTheme({required final MyAppTheme currentTheme}) = _$SetTheme;

  MyAppTheme get currentTheme => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$SetThemeCopyWith<_$SetTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetThemeCopyWith<$Res> {
  factory _$$GetThemeCopyWith(
          _$GetTheme value, $Res Function(_$GetTheme) then) =
      __$$GetThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetThemeCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$GetThemeCopyWith<$Res> {
  __$$GetThemeCopyWithImpl(_$GetTheme _value, $Res Function(_$GetTheme) _then)
      : super(_value, (v) => _then(v as _$GetTheme));

  @override
  _$GetTheme get _value => super._value as _$GetTheme;
}

/// @nodoc

class _$GetTheme implements GetTheme {
  const _$GetTheme();

  @override
  String toString() {
    return 'ThemeEvent.getTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MyAppTheme currentTheme) setTheme,
    required TResult Function() getTheme,
  }) {
    return getTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
  }) {
    return getTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MyAppTheme currentTheme)? setTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SetTheme value) setTheme,
    required TResult Function(GetTheme value) getTheme,
  }) {
    return getTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
  }) {
    return getTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SetTheme value)? setTheme,
    TResult Function(GetTheme value)? getTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme(this);
    }
    return orElse();
  }
}

abstract class GetTheme implements ThemeEvent {
  const factory GetTheme() = _$GetTheme;
}

/// @nodoc
mixin _$ThemeState {
  bool get isDark => throw _privateConstructorUsedError;
  bool get isRendering => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({bool isDark, bool isRendering});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? isDark = freezed,
    Object? isRendering = freezed,
  }) {
    return _then(_value.copyWith(
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      isRendering: isRendering == freezed
          ? _value.isRendering
          : isRendering // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_ThemeStateCopyWith(
          _$_ThemeState value, $Res Function(_$_ThemeState) then) =
      __$$_ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isDark, bool isRendering});
}

/// @nodoc
class __$$_ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_ThemeStateCopyWith<$Res> {
  __$$_ThemeStateCopyWithImpl(
      _$_ThemeState _value, $Res Function(_$_ThemeState) _then)
      : super(_value, (v) => _then(v as _$_ThemeState));

  @override
  _$_ThemeState get _value => super._value as _$_ThemeState;

  @override
  $Res call({
    Object? isDark = freezed,
    Object? isRendering = freezed,
  }) {
    return _then(_$_ThemeState(
      isDark: isDark == freezed
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      isRendering: isRendering == freezed
          ? _value.isRendering
          : isRendering // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({required this.isDark, required this.isRendering});

  @override
  final bool isDark;
  @override
  final bool isRendering;

  @override
  String toString() {
    return 'ThemeState(isDark: $isDark, isRendering: $isRendering)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeState &&
            const DeepCollectionEquality().equals(other.isDark, isDark) &&
            const DeepCollectionEquality()
                .equals(other.isRendering, isRendering));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDark),
      const DeepCollectionEquality().hash(isRendering));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      __$$_ThemeStateCopyWithImpl<_$_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState(
      {required final bool isDark,
      required final bool isRendering}) = _$_ThemeState;

  @override
  bool get isDark => throw _privateConstructorUsedError;
  @override
  bool get isRendering => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
