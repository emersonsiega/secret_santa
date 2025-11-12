import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secret_santa/src/shared/domain/entities/config/app_settings.dart';
import 'package:secret_santa/src/shared/infra/adapters/appwrite_client_adapter.dart';

part 'providers.g.dart';

@riverpod
AppwriteClientAdapter appWriteClient(Ref ref) {
  return AppwriteClientAdapter(
    projectId: AppSettings.i.appwriteProjectId,
    endpoint: AppSettings.i.appwriteProjectPublicEndpoint,
  );
}
