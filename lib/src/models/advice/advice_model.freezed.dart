// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdviceModel _$AdviceModelFromJson(Map<String, dynamic> json) {
  return _AdviceModel.fromJson(json);
}

/// @nodoc
mixin _$AdviceModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get advice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdviceModelCopyWith<AdviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdviceModelCopyWith<$Res> {
  factory $AdviceModelCopyWith(
          AdviceModel value, $Res Function(AdviceModel) then) =
      _$AdviceModelCopyWithImpl<$Res, AdviceModel>;
  @useResult
  $Res call({int id, String type, String advice});
}

/// @nodoc
class _$AdviceModelCopyWithImpl<$Res, $Val extends AdviceModel>
    implements $AdviceModelCopyWith<$Res> {
  _$AdviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? advice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      advice: null == advice
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdviceModelImplCopyWith<$Res>
    implements $AdviceModelCopyWith<$Res> {
  factory _$$AdviceModelImplCopyWith(
          _$AdviceModelImpl value, $Res Function(_$AdviceModelImpl) then) =
      __$$AdviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String type, String advice});
}

/// @nodoc
class __$$AdviceModelImplCopyWithImpl<$Res>
    extends _$AdviceModelCopyWithImpl<$Res, _$AdviceModelImpl>
    implements _$$AdviceModelImplCopyWith<$Res> {
  __$$AdviceModelImplCopyWithImpl(
      _$AdviceModelImpl _value, $Res Function(_$AdviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? advice = null,
  }) {
    return _then(_$AdviceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      advice: null == advice
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdviceModelImpl implements _AdviceModel {
  _$AdviceModelImpl(
      {required this.id, required this.type, required this.advice});

  factory _$AdviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdviceModelImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final String advice;

  @override
  String toString() {
    return 'AdviceModel(id: $id, type: $type, advice: $advice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdviceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.advice, advice) || other.advice == advice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, advice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdviceModelImplCopyWith<_$AdviceModelImpl> get copyWith =>
      __$$AdviceModelImplCopyWithImpl<_$AdviceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdviceModelImplToJson(
      this,
    );
  }
}

abstract class _AdviceModel implements AdviceModel {
  factory _AdviceModel(
      {required final int id,
      required final String type,
      required final String advice}) = _$AdviceModelImpl;

  factory _AdviceModel.fromJson(Map<String, dynamic> json) =
      _$AdviceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  String get advice;
  @override
  @JsonKey(ignore: true)
  _$$AdviceModelImplCopyWith<_$AdviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
