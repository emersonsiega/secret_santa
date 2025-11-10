import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:secret_santa/src/features/history/screens/history_screen.dart';
import 'package:secret_santa/src/features/onboarding/presentation/screens/onboarding/onboarding_screen.dart';

final appRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    /// Public routes
    GoRoute(
      name: 'root',
      path: '/',
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
