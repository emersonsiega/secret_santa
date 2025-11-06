import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';

enum Flavor {
  dev,
  prod,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title => switch (appFlavor) {
    Flavor.dev => ' [DEV] ${t.appName}',
    Flavor.prod => t.appName,
  };

  static String get env => switch (appFlavor) {
    Flavor.dev => '.env/.env-dev',
    Flavor.prod => '.env/.env-prod',
  };
}
