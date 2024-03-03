// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chore_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoreModel _$ChoreModelFromJson(Map<String, dynamic> json) {
  return _ChoreModel.fromJson(json);
}

/// @nodoc
mixin _$ChoreModel {
  int get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get dueDate => throw _privateConstructorUsedError;
  String? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoreModelCopyWith<ChoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoreModelCopyWith<$Res> {
  factory $ChoreModelCopyWith(
          ChoreModel value, $Res Function(ChoreModel) then) =
      _$ChoreModelCopyWithImpl<$Res, ChoreModel>;
  @useResult
  $Res call(
      {int id,
      String userId,
      String name,
      String? description,
      bool isCompleted,
      String? dueDate,
      String? completedAt});
}

/// @nodoc
class _$ChoreModelCopyWithImpl<$Res, $Val extends ChoreModel>
    implements $ChoreModelCopyWith<$Res> {
  _$ChoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? description = freezed,
    Object? isCompleted = null,
    Object? dueDate = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoreModelImplCopyWith<$Res>
    implements $ChoreModelCopyWith<$Res> {
  factory _$$ChoreModelImplCopyWith(
          _$ChoreModelImpl value, $Res Function(_$ChoreModelImpl) then) =
      __$$ChoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String userId,
      String name,
      String? description,
      bool isCompleted,
      String? dueDate,
      String? completedAt});
}

/// @nodoc
class __$$ChoreModelImplCopyWithImpl<$Res>
    extends _$ChoreModelCopyWithImpl<$Res, _$ChoreModelImpl>
    implements _$$ChoreModelImplCopyWith<$Res> {
  __$$ChoreModelImplCopyWithImpl(
      _$ChoreModelImpl _value, $Res Function(_$ChoreModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? description = freezed,
    Object? isCompleted = null,
    Object? dueDate = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$ChoreModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoreModelImpl implements _ChoreModel {
  _$ChoreModelImpl(
      {required this.id,
      required this.userId,
      required this.name,
      required this.description,
      required this.isCompleted,
      required this.dueDate,
      required this.completedAt});

  factory _$ChoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoreModelImplFromJson(json);

  @override
  final int id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool isCompleted;
  @override
  final String? dueDate;
  @override
  final String? completedAt;

  @override
  String toString() {
    return 'ChoreModel(id: $id, userId: $userId, name: $name, description: $description, isCompleted: $isCompleted, dueDate: $dueDate, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoreModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name, description,
      isCompleted, dueDate, completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoreModelImplCopyWith<_$ChoreModelImpl> get copyWith =>
      __$$ChoreModelImplCopyWithImpl<_$ChoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoreModelImplToJson(
      this,
    );
  }
}

abstract class _ChoreModel implements ChoreModel {
  factory _ChoreModel(
      {required final int id,
      required final String userId,
      required final String name,
      required final String? description,
      required final bool isCompleted,
      required final String? dueDate,
      required final String? completedAt}) = _$ChoreModelImpl;

  factory _ChoreModel.fromJson(Map<String, dynamic> json) =
      _$ChoreModelImpl.fromJson;

  @override
  int get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  String? get description;
  @override
  bool get isCompleted;
  @override
  String? get dueDate;
  @override
  String? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChoreModelImplCopyWith<_$ChoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
