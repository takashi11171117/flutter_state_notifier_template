// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeModelStateTearOff {
  const _$HomeModelStateTearOff();

  _HomeModelState call({int count = 0, bool isEnabled = true}) {
    return _HomeModelState(
      count: count,
      isEnabled: isEnabled,
    );
  }
}

/// @nodoc
const $HomeModelState = _$HomeModelStateTearOff();

/// @nodoc
mixin _$HomeModelState {
  int get count => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeModelStateCopyWith<HomeModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelStateCopyWith<$Res> {
  factory $HomeModelStateCopyWith(
          HomeModelState value, $Res Function(HomeModelState) then) =
      _$HomeModelStateCopyWithImpl<$Res>;
  $Res call({int count, bool isEnabled});
}

/// @nodoc
class _$HomeModelStateCopyWithImpl<$Res>
    implements $HomeModelStateCopyWith<$Res> {
  _$HomeModelStateCopyWithImpl(this._value, this._then);

  final HomeModelState _value;
  // ignore: unused_field
  final $Res Function(HomeModelState) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeModelStateCopyWith<$Res>
    implements $HomeModelStateCopyWith<$Res> {
  factory _$HomeModelStateCopyWith(
          _HomeModelState value, $Res Function(_HomeModelState) then) =
      __$HomeModelStateCopyWithImpl<$Res>;
  @override
  $Res call({int count, bool isEnabled});
}

/// @nodoc
class __$HomeModelStateCopyWithImpl<$Res>
    extends _$HomeModelStateCopyWithImpl<$Res>
    implements _$HomeModelStateCopyWith<$Res> {
  __$HomeModelStateCopyWithImpl(
      _HomeModelState _value, $Res Function(_HomeModelState) _then)
      : super(_value, (v) => _then(v as _HomeModelState));

  @override
  _HomeModelState get _value => super._value as _HomeModelState;

  @override
  $Res call({
    Object? count = freezed,
    Object? isEnabled = freezed,
  }) {
    return _then(_HomeModelState(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      isEnabled: isEnabled == freezed
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeModelState implements _HomeModelState {
  const _$_HomeModelState({this.count = 0, this.isEnabled = true});

  @JsonKey()
  @override
  final int count;
  @JsonKey()
  @override
  final bool isEnabled;

  @override
  String toString() {
    return 'HomeModelState(count: $count, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeModelState &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.isEnabled, isEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(isEnabled));

  @JsonKey(ignore: true)
  @override
  _$HomeModelStateCopyWith<_HomeModelState> get copyWith =>
      __$HomeModelStateCopyWithImpl<_HomeModelState>(this, _$identity);
}

abstract class _HomeModelState implements HomeModelState {
  const factory _HomeModelState({int count, bool isEnabled}) =
      _$_HomeModelState;

  @override
  int get count;
  @override
  bool get isEnabled;
  @override
  @JsonKey(ignore: true)
  _$HomeModelStateCopyWith<_HomeModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
