// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_request_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AsyncRequestFailure {
  String? get message;

  @override
  String toString() {
    return 'AsyncRequestFailure(message: $message)';
  }
}

/// Adds pattern-matching-related methods to [AsyncRequestFailure].
extension AsyncRequestFailurePatterns on AsyncRequestFailure {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnknownFailure value)? unknown,
    TResult Function(InaccessibleFailure value)? inaccessible,
    TResult Function(InvalidArgumentsFailure value)? invalidArguments,
    TResult Function(AuthFailure value)? auth,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UnknownFailure() when unknown != null:
        return unknown(_that);
      case InaccessibleFailure() when inaccessible != null:
        return inaccessible(_that);
      case InvalidArgumentsFailure() when invalidArguments != null:
        return invalidArguments(_that);
      case AuthFailure() when auth != null:
        return auth(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(UnknownFailure value) unknown,
    required TResult Function(InaccessibleFailure value) inaccessible,
    required TResult Function(InvalidArgumentsFailure value) invalidArguments,
    required TResult Function(AuthFailure value) auth,
  }) {
    final _that = this;
    switch (_that) {
      case UnknownFailure():
        return unknown(_that);
      case InaccessibleFailure():
        return inaccessible(_that);
      case InvalidArgumentsFailure():
        return invalidArguments(_that);
      case AuthFailure():
        return auth(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnknownFailure value)? unknown,
    TResult? Function(InaccessibleFailure value)? inaccessible,
    TResult? Function(InvalidArgumentsFailure value)? invalidArguments,
    TResult? Function(AuthFailure value)? auth,
  }) {
    final _that = this;
    switch (_that) {
      case UnknownFailure() when unknown != null:
        return unknown(_that);
      case InaccessibleFailure() when inaccessible != null:
        return inaccessible(_that);
      case InvalidArgumentsFailure() when invalidArguments != null:
        return invalidArguments(_that);
      case AuthFailure() when auth != null:
        return auth(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, String? errorCode)? unknown,
    TResult Function(String? message)? inaccessible,
    TResult Function(String? message)? invalidArguments,
    TResult Function(String? message)? auth,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UnknownFailure() when unknown != null:
        return unknown(_that.message, _that.errorCode);
      case InaccessibleFailure() when inaccessible != null:
        return inaccessible(_that.message);
      case InvalidArgumentsFailure() when invalidArguments != null:
        return invalidArguments(_that.message);
      case AuthFailure() when auth != null:
        return auth(_that.message);
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
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, String? errorCode) unknown,
    required TResult Function(String? message) inaccessible,
    required TResult Function(String? message) invalidArguments,
    required TResult Function(String? message) auth,
  }) {
    final _that = this;
    switch (_that) {
      case UnknownFailure():
        return unknown(_that.message, _that.errorCode);
      case InaccessibleFailure():
        return inaccessible(_that.message);
      case InvalidArgumentsFailure():
        return invalidArguments(_that.message);
      case AuthFailure():
        return auth(_that.message);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, String? errorCode)? unknown,
    TResult? Function(String? message)? inaccessible,
    TResult? Function(String? message)? invalidArguments,
    TResult? Function(String? message)? auth,
  }) {
    final _that = this;
    switch (_that) {
      case UnknownFailure() when unknown != null:
        return unknown(_that.message, _that.errorCode);
      case InaccessibleFailure() when inaccessible != null:
        return inaccessible(_that.message);
      case InvalidArgumentsFailure() when invalidArguments != null:
        return invalidArguments(_that.message);
      case AuthFailure() when auth != null:
        return auth(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class UnknownFailure extends AsyncRequestFailure {
  UnknownFailure({this.message, this.errorCode}) : super._();

  @override
  final String? message;
  final String? errorCode;

  @override
  String toString() {
    return 'AsyncRequestFailure.unknown(message: $message, errorCode: $errorCode)';
  }
}

/// @nodoc

class InaccessibleFailure extends AsyncRequestFailure {
  InaccessibleFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AsyncRequestFailure.inaccessible(message: $message)';
  }
}

/// @nodoc

class InvalidArgumentsFailure extends AsyncRequestFailure {
  InvalidArgumentsFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AsyncRequestFailure.invalidArguments(message: $message)';
  }
}

/// @nodoc

class AuthFailure extends AsyncRequestFailure {
  AuthFailure({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'AsyncRequestFailure.auth(message: $message)';
  }
}
