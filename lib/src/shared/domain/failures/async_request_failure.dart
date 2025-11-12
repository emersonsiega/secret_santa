import 'package:freezed_annotation/freezed_annotation.dart';

part 'async_request_failure.freezed.dart';

@freezed
sealed class AsyncRequestFailure with _$AsyncRequestFailure {
  const AsyncRequestFailure._();

  /// Something went wrong with the request and it's not possible to know exactly what happened.
  /// e.g.: The request body is correct and there's internet access, but the remote party has failed.
  factory AsyncRequestFailure.unknown({String? message, String? errorCode}) = UnknownFailure;

  /// The requested resource is not accessible for any reason
  factory AsyncRequestFailure.inaccessible({String? message}) = InaccessibleFailure;

  /// Any request argument is not valid
  factory AsyncRequestFailure.invalidArguments({String? message}) = InvalidArgumentsFailure;

  /// The required resource is only accessible to logged users
  factory AsyncRequestFailure.auth({String? message}) = AuthFailure;
}
