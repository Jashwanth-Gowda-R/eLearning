import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/style/theme.dart';
import 'package:vrook_course/pages/sign_in/sign_in.dart';
import 'package:vrook_course/pages/welcome/welcome.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const Welcome(),
        '/signin': (context) => const SignIn()
      },
      // home: const Welcome(),
    );
  }
}
