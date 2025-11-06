import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:secret_santa/src/shared/domain/entities/config/flavors.dart';
import 'package:secret_santa/src/shared/presentation/design_system/theme.dart';
import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      title: F.title,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text(F.title),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
