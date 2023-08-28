import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/style/theme.dart';
import 'package:vrook_course/global.dart';
import 'package:vrook_course/pages/application/application.dart';
import 'package:vrook_course/pages/sign_in/sign_in.dart';
import 'package:vrook_course/pages/sign_up/sign_up.dart';
import 'package:vrook_course/pages/welcome/welcome.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  await Global.init();
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
        '/signin': (context) => const SignIn(),
        '/signup': (context) => const SignUp(),
        '/application': (context) => const Application(),
      },
      // home: const Welcome(),
    );
  }
}
