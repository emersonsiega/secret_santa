import 'package:appwrite/appwrite.dart' as appwrite;
import 'package:dart_either/dart_either.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secret_santa/src/shared/data/models/user_model.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';
import 'package:secret_santa/src/shared/domain/failures/async_request_failure.dart';
import 'package:secret_santa/src/shared/domain/interfaces/repositories/auth_repository.dart';
import 'package:secret_santa/src/shared/infra/adapters/appwrite_client_adapter.dart';
import 'package:secret_santa/src/shared/infra/logger/logger.dart';
import 'package:secret_santa/src/shared/infra/providers.dart';

part 'auth_repository.g.dart';

@Riverpod(dependencies: [appWriteClient])
class AuthRepository extends _$AuthRepository implements IAuthRepository {
  late final _client = ref.read(appWriteClientProvider);

  AuthRepository();

  @override
  Future<User?> build() async {
    return (await user).fold(ifLeft: (_) => null, ifRight: (value) => value);
  }

  @override
  Future<Either<AsyncRequestFailure, User?>> get user async {
    try {
      if (state.value != null) return Right(state.value);

      final currentUser = await _client.account.get();
      final entity = UserModel.fromJson(currentUser.toMap()).toEntity();
      state = AsyncData(entity);
      return entity.right();
    } catch (e) {
      logger.e('Failed to get current user', error: e);

      if (e is appwrite.AppwriteException) return Left(e.toEntity());

      return Left(AsyncRequestFailure.unknown());
    }
  }

  @override
  Future<Either<AsyncRequestFailure, void>> createAccount(User user) async {
    try {
      await _client.account.createPhoneToken(
        userId: user.buildUniqueId,
        phone: user.rawPhoneNumber,
      );
      return null.right();
    } catch (e) {
      logger.e('Failed to create account', error: e);

      if (e is appwrite.AppwriteException) return Left(e.toEntity());

      return Left(AsyncRequestFailure.unknown());
    }
  }

  @override
  Future<Either<AsyncRequestFailure, void>> logInWithPhoneNumber(User user) async {
    try {
      await _client.account.createPhoneToken(
        userId: user.buildUniqueId,
        phone: user.rawPhoneNumber,
      );
      return null.right();
    } catch (e) {
      logger.e('Failed to create phone token', error: e);

      if (e is appwrite.AppwriteException) return Left(e.toEntity());

      return Left(AsyncRequestFailure.unknown());
    }
  }

  @override
  Future<Either<AsyncRequestFailure, User?>> validateSMSCode(User user, String secret) async {
    try {
      await _client.account.createSession(userId: user.buildUniqueId, secret: secret);

      final usr = (await this.user);
      state = AsyncData(usr.fold(ifLeft: (_) => null, ifRight: (user) => user));
      return usr;
    } catch (e) {
      logger.e('Failed to log in with sms code', error: e);
      if (e is appwrite.AppwriteException) return Left(e.toEntity());

      return Left(AsyncRequestFailure.unknown());
    }
  }

  @override
  Future<Either<AsyncRequestFailure, void>> logout() async {
    try {
      await _client.account.deleteSession(sessionId: 'current');
      state = AsyncValue.data(null);
      return null.right();
    } catch (e) {
      logger.e('Failed to log out', error: e);
      if (e is appwrite.AppwriteException) return Left(e.toEntity());

      return Left(AsyncRequestFailure.unknown());
    }
  }

  @override
  Future<Either<AsyncRequestFailure, void>> updateName(User user) async {
    try {
      final currentUser = await _client.account.updateName(name: user.name);
      final entity = UserModel.fromJson(currentUser.toMap()).toEntity();
      state = AsyncData(entity);
      return entity.right();
    } catch (e) {
      if (e is appwrite.AppwriteException) return Left(e.toEntity());

      return Left(AsyncRequestFailure.unknown());
    }
  }
}
