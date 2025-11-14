import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_phone_form_field/reactive_phone_form_field.dart';
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
      child: Consumer(
        builder: (context, ref, child) {
          return MaterialApp.router(
            routerConfig: ref.watch(appRouterProvider),
            theme: buildTheme(),
            title: F.title,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            supportedLocales: AppLocaleUtils.supportedLocales,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              ...PhoneFieldLocalization.delegates,
            ],
            builder: (context, child) => ReactiveFormConfig(
              validationMessages: {
                ValidationMessage.required: (_) => t.formValidations.required,
                ValidationMessage.minLength: (value) =>
                    t.formValidations.minLength(value: (value as Map)['requiredLength']),
                ValidationMessage.maxLength: (value) =>
                    t.formValidations.maxLength(value: (value as Map)['requiredLength']),
                ...PhoneValidationMessage.localizedValidationMessages(context),
              },
              child: child!,
            ),
          );
        },
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
