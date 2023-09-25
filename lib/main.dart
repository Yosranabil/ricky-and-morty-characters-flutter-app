import 'package:flutter/material.dart';
import 'package:FlutterCharacters/app_router.dart';

void main() {
  runApp( CharacterApp(appRouter: AppRouter(),));
}

class CharacterApp extends StatelessWidget {

  final AppRouter appRouter;

  const CharacterApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
