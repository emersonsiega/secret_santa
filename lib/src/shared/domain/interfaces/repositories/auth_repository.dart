import 'package:dart_either/dart_either.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';
import 'package:secret_santa/src/shared/domain/failures/async_request_failure.dart';

abstract class IAuthRepository {
  Future<Either<AsyncRequestFailure, User?>> get user;
  Future<Either<AsyncRequestFailure, void>> registerAnonymousUser(User user);
  Future<Either<AsyncRequestFailure, void>> createAccount(User user);
  Future<Either<AsyncRequestFailure, void>> logInWithPhoneNumber(User user);
  Future<Either<AsyncRequestFailure, User?>> validateSMSCode(User user, String secret);
  Future<Either<AsyncRequestFailure, void>> updateName(User user);
  Future<Either<AsyncRequestFailure, void>> logout();
}
