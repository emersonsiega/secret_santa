import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secret_santa/src/shared/domain/entities/config/flavors.dart';
import 'package:secret_santa/src/shared/infra/logger/logger.dart';

part 'app_settings.freezed.dart';

@freezed
abstract class AppSettings with _$AppSettings {
  static AppSettings? _instance;
  const AppSettings._();

  static AppSettings get i {
    if (_instance == null) {
      throw Exception('AppSettings has not been initialized. Call AppSettings.init() first.');
    }

    return _instance!;
  }

  const factory AppSettings._internal({
    required String appwriteProjectId,
    required String appwriteProjectName,
    required String appwriteProjectPublicEndpoint,
  }) = _AppSettings;

  static Future<void> init() async {
    await dotenv.load(fileName: F.env);

    try {
      _instance = AppSettings._internal(
        appwriteProjectId: dotenv.env['APPWRITE_PROJECT_ID']!,
        appwriteProjectName: dotenv.env['APPWRITE_PROJECT_NAME']!,
        appwriteProjectPublicEndpoint: dotenv.env['APPWRITE_PUBLIC_ENDPOINT']!,
      );
    } catch (error, stack) {
      logger.e("Failed to load envs", error: error, stackTrace: stack);
      rethrow;
    }
  }
}
