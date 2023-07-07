import 'dart:io';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/homepage/homepage.dart';
import '../pages/tasks/taskdetails.dart';
import 'magic_strings.dart';

class RouteGenerator {
  GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage(),
      ),
      GoRoute(
        name: RouteNames.taskDetails,
        path: '/${RouteNames.taskDetails}',
        pageBuilder: (context, state) {
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const TaskDetails(),
          );
        },
      ),
    ],
    // errorBuilder: (context, state) => ErrorRoute(),
    errorPageBuilder: (context, state) =>
        const MaterialPage(child: ErrorRoute()),
  );
}

class ErrorRoute extends StatelessWidget {
  const ErrorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error - 400"),
        leading: IconButton(
          icon: IconButton(
            icon: Platform.isIOS
                ? const Icon(Icons.arrow_back_ios)
                : const Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.pop(context),
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const Center(
        child: Text(
          "Page Not Found....",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
