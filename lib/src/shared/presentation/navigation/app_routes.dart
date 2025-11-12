import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:secret_santa/src/features/history/presentation/screens/history_screen.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:secret_santa/src/features/splash/presentation/screens/splash_screen.dart';
import 'package:secret_santa/src/shared/data/repositories/auth_repository.dart';
import 'package:secret_santa/src/shared/domain/entities/auth/user.dart';
import 'package:secret_santa/src/shared/infra/logger/logger.dart';

part 'app_routes.g.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

@Riverpod(dependencies: [AuthRepository])
GoRouter appRouter(Ref ref) {
  final auth = ValueNotifier<AsyncValue<User?>>(const AsyncLoading());
  ref.onDispose(auth.dispose);

  ref.listen(authRepositoryProvider, (_, next) {
    auth.value = next;
  });

  final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _navigatorKey,
    refreshListenable: auth,
    redirect: (context, state) {
      logger.i('Redirect called: ${auth.value}');

      return switch (auth.value) {
        AsyncError() => '/',
        AsyncData(:final value, :final isLoading) when !isLoading && value == null => '/onboarding',
        AsyncData(:final value, :final isLoading) when value != null && !isLoading => '/history',
        _ => null,
      };
    },
    routes: [
      /// Public routes
      GoRoute(
        name: 'root',
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        name: 'onboarding',
        path: '/onboarding',
        builder: (context, state) => OnboardingScreen(),
      ),

      /// Logged area
      GoRoute(
        name: 'history',
        path: '/history',
        builder: (context, state) => HistoryScreen(),
      ),
      GoRoute(
        name: 'createGroup',
        path: '/create-group',
        builder: (context, state) => Scaffold(body: Center(child: Text("TODO"))),
      ),
    ],
  );

  ref.onDispose(router.dispose);

  return router;
}
