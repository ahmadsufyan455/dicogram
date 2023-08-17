// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language language) changeLanguage,
    required TResult Function() getLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language language)? changeLanguage,
    TResult? Function()? getLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language language)? changeLanguage,
    TResult Function()? getLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_GetLanguage value) getLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_GetLanguage value)? getLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_GetLanguage value)? getLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangeLanguageCopyWith<$Res> {
  factory _$$_ChangeLanguageCopyWith(
          _$_ChangeLanguage value, $Res Function(_$_ChangeLanguage) then) =
      __$$_ChangeLanguageCopyWithImpl<$Res>;
  @useResult
  $Res call({Language language});
}

/// @nodoc
class __$$_ChangeLanguageCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$_ChangeLanguage>
    implements _$$_ChangeLanguageCopyWith<$Res> {
  __$$_ChangeLanguageCopyWithImpl(
      _$_ChangeLanguage _value, $Res Function(_$_ChangeLanguage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$_ChangeLanguage(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$_ChangeLanguage implements _ChangeLanguage {
  const _$_ChangeLanguage(this.language);

  @override
  final Language language;

  @override
  String toString() {
    return 'LanguageEvent.changeLanguage(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeLanguage &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeLanguageCopyWith<_$_ChangeLanguage> get copyWith =>
      __$$_ChangeLanguageCopyWithImpl<_$_ChangeLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language language) changeLanguage,
    required TResult Function() getLanguage,
  }) {
    return changeLanguage(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language language)? changeLanguage,
    TResult? Function()? getLanguage,
  }) {
    return changeLanguage?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language language)? changeLanguage,
    TResult Function()? getLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_GetLanguage value) getLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_GetLanguage value)? getLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_GetLanguage value)? getLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements LanguageEvent {
  const factory _ChangeLanguage(final Language language) = _$_ChangeLanguage;

  Language get language;
  @JsonKey(ignore: true)
  _$$_ChangeLanguageCopyWith<_$_ChangeLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetLanguageCopyWith<$Res> {
  factory _$$_GetLanguageCopyWith(
          _$_GetLanguage value, $Res Function(_$_GetLanguage) then) =
      __$$_GetLanguageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetLanguageCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$_GetLanguage>
    implements _$$_GetLanguageCopyWith<$Res> {
  __$$_GetLanguageCopyWithImpl(
      _$_GetLanguage _value, $Res Function(_$_GetLanguage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetLanguage implements _GetLanguage {
  const _$_GetLanguage();

  @override
  String toString() {
    return 'LanguageEvent.getLanguage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetLanguage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Language language) changeLanguage,
    required TResult Function() getLanguage,
  }) {
    return getLanguage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Language language)? changeLanguage,
    TResult? Function()? getLanguage,
  }) {
    return getLanguage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Language language)? changeLanguage,
    TResult Function()? getLanguage,
    required TResult orElse(),
  }) {
    if (getLanguage != null) {
      return getLanguage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeLanguage value) changeLanguage,
    required TResult Function(_GetLanguage value) getLanguage,
  }) {
    return getLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeLanguage value)? changeLanguage,
    TResult? Function(_GetLanguage value)? getLanguage,
  }) {
    return getLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeLanguage value)? changeLanguage,
    TResult Function(_GetLanguage value)? getLanguage,
    required TResult orElse(),
  }) {
    if (getLanguage != null) {
      return getLanguage(this);
    }
    return orElse();
  }
}

abstract class _GetLanguage implements LanguageEvent {
  const factory _GetLanguage() = _$_GetLanguage;
}

/// @nodoc
mixin _$LanguageState {
  Language get selectedLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({Language selectedLanguage});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
  }) {
    return _then(_value.copyWith(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LanguageStateCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$_LanguageStateCopyWith(
          _$_LanguageState value, $Res Function(_$_LanguageState) then) =
      __$$_LanguageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Language selectedLanguage});
}

/// @nodoc
class __$$_LanguageStateCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$_LanguageState>
    implements _$$_LanguageStateCopyWith<$Res> {
  __$$_LanguageStateCopyWithImpl(
      _$_LanguageState _value, $Res Function(_$_LanguageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLanguage = null,
  }) {
    return _then(_$_LanguageState(
      selectedLanguage: null == selectedLanguage
          ? _value.selectedLanguage
          : selectedLanguage // ignore: cast_nullable_to_non_nullable
              as Language,
    ));
  }
}

/// @nodoc

class _$_LanguageState implements _LanguageState {
  const _$_LanguageState({required this.selectedLanguage});

  @override
  final Language selectedLanguage;

  @override
  String toString() {
    return 'LanguageState(selectedLanguage: $selectedLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageState &&
            (identical(other.selectedLanguage, selectedLanguage) ||
                other.selectedLanguage == selectedLanguage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLanguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      __$$_LanguageStateCopyWithImpl<_$_LanguageState>(this, _$identity);
}

abstract class _LanguageState implements LanguageState {
  const factory _LanguageState({required final Language selectedLanguage}) =
      _$_LanguageState;

  @override
  Language get selectedLanguage;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageStateCopyWith<_$_LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}
