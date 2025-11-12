import 'package:appwrite/appwrite.dart';
import 'package:secret_santa/src/shared/domain/failures/async_request_failure.dart';

class AppwriteClientAdapter {
  late final Client _client;
  late final Account _account;
  late final Databases _databases;
  late final Storage _storage;

  AppwriteClientAdapter({
    required String endpoint,
    required String projectId,
  }) {
    _client = Client()
      ..setEndpoint(endpoint)
      ..setProject(projectId);
    _account = Account(_client);
    _databases = Databases(_client);
    _storage = Storage(_client);
  }

  Account get account => _account;
  Databases get databases => _databases;
  Storage get storage => _storage;
}

extension AppwriteExceptionExt on AppwriteException {
  AsyncRequestFailure toEntity() {
    if (code == 400 && type == 'general_argument_invalid') {
      return AsyncRequestFailure.invalidArguments(message: message);
    }

    if (code == 401) {
      if (type == 'user_invalid_token') {
        return AsyncRequestFailure.invalidArguments(message: message);
      }
      return AsyncRequestFailure.auth();
    }

    if (code == 404 || code == 403) {
      return AsyncRequestFailure.inaccessible();
    }

    return AsyncRequestFailure.unknown(errorCode: code?.toString(), message: message);
  }
}
