import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_santa/src/shared/presentation/design_system/colors.dart';
import 'package:secret_santa/src/shared/presentation/i18n/translations.g.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: .light,
      ),
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            Spacer(),
            Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(AppColors.lightText),
              ),
            ),
            Spacer(),
            Padding(
              padding: .only(bottom: 12.0),
              child: Text(
                t.splash.title,
                textAlign: .center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.lightText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
