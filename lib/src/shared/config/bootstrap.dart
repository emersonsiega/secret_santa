import 'package:flutter/material.dart';

import 'package:secret_santa/src/shared/domain/entities/config/app_settings.dart';
import 'package:secret_santa/src/shared/domain/entities/config/flavors.dart';
import 'package:secret_santa/src/shared/infra/logger/logger.dart';
import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';
import 'package:secret_santa/src/shared/presentation/screens/main_app.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  logger.i('App running in ${F.name.toUpperCase()} mode');

  await LocaleSettings.useDeviceLocale();
  await AppSettings.init();

  runApp(const MainApp());
}
