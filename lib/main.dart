import 'package:flutter/material.dart';
import 'package:taskmanagement/utils/router.dart';

void main() {
  runApp(const MyApp());
}

var router = RouteGenerator().router;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFFB8CCFC),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
