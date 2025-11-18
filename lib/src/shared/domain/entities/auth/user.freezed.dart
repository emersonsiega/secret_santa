// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  @override
  String toString() {
    return 'User()';
  }
}

/// @nodoc
class $UserCopyWith<$Res> {
  $UserCopyWith(User _, $Res Function(User) __);
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RegularUser value)? $default, {
    TResult Function(AnonymousUser value)? anonymous,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RegularUser() when $default != null:
        return $default(_that);
      case AnonymousUser() when anonymous != null:
        return anonymous(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RegularUser value) $default, {
    required TResult Function(AnonymousUser value) anonymous,
  }) {
    final _that = this;
    switch (_that) {
      case RegularUser():
        return $default(_that);
      case AnonymousUser():
        return anonymous(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RegularUser value)? $default, {
    TResult? Function(AnonymousUser value)? anonymous,
  }) {
    final _that = this;
    switch (_that) {
      case RegularUser() when $default != null:
        return $default(_that);
      case AnonymousUser() when anonymous != null:
        return anonymous(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? id, String name, String phoneNumber)? $default, {
    TResult Function()? anonymous,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RegularUser() when $default != null:
        return $default(_that.id, _that.name, _that.phoneNumber);
      case AnonymousUser() when anonymous != null:
        return anonymous();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? id, String name, String phoneNumber) $default, {
    required TResult Function() anonymous,
  }) {
    final _that = this;
    switch (_that) {
      case RegularUser():
        return $default(_that.id, _that.name, _that.phoneNumber);
      case AnonymousUser():
        return anonymous();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? id, String name, String phoneNumber)? $default, {
    TResult? Function()? anonymous,
  }) {
    final _that = this;
    switch (_that) {
      case RegularUser() when $default != null:
        return $default(_that.id, _that.name, _that.phoneNumber);
      case AnonymousUser() when anonymous != null:
        return anonymous();
      case _:
        return null;
    }
  }
}

/// @nodoc

class RegularUser extends User {
  RegularUser({this.id, this.name = '', required this.phoneNumber}) : super._();

  final String? id;
  @JsonKey()
  final String name;
  final String phoneNumber;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RegularUserCopyWith<RegularUser> get copyWith =>
      _$RegularUserCopyWithImpl<RegularUser>(this, _$identity);

  @override
  String toString() {
    return 'User(id: $id, name: $name, phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $RegularUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $RegularUserCopyWith(
    RegularUser value,
    $Res Function(RegularUser) _then,
  ) = _$RegularUserCopyWithImpl;
  @useResult
  $Res call({String? id, String name, String phoneNumber});
}

/// @nodoc
class _$RegularUserCopyWithImpl<$Res> implements $RegularUserCopyWith<$Res> {
  _$RegularUserCopyWithImpl(this._self, this._then);

  final RegularUser _self;
  final $Res Function(RegularUser) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? phoneNumber = null,
  }) {
    return _then(
      RegularUser(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _self.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class AnonymousUser extends User {
  AnonymousUser() : super._();

  @override
  String toString() {
    return 'User.anonymous()';
  }
}

/// @nodoc
class $AnonymousUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  $AnonymousUserCopyWith(AnonymousUser _, $Res Function(AnonymousUser) __);
}

/// @nodoc
class _$AnonymousUserCopyWithImpl<$Res>
    implements $AnonymousUserCopyWith<$Res> {
  _$AnonymousUserCopyWithImpl(this._self, this._then);

  final AnonymousUser _self;
  final $Res Function(AnonymousUser) _then;
}
