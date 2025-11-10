import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_santa/src/shared/domain/entities/config/flavors.dart';
import 'package:secret_santa/src/shared/infra/logger/logger.dart';
import 'package:secret_santa/src/shared/presentation/design_system/theme.dart';
import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';
import 'package:secret_santa/src/shared/presentation/navigation/app_routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        _RiverpodLogger(),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: buildTheme(),
        title: F.title,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
      ),
    );
  }
}

final class _RiverpodLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderObserverContext context,
    Object? previousValue,
    Object? newValue,
  ) {
    logger.d(
      '''PROVIDER ${context.provider} HAS CHANGED: {
  previousValue: $previousValue,
  newValue: $newValue
}''',
    );
  }
}
