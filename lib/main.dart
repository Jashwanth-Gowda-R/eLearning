import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/routes/app_route_names.dart';
import 'package:vrook_course/common/routes/routes.dart';
import 'package:vrook_course/common/style/theme.dart';
import 'package:vrook_course/global.dart';

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
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.light,
        // initialRoute: '/',
        initialRoute: AppRoutes.Welcome,
        onGenerateRoute: AppPages.GenerateRouteSettings,
        // routes: {
        //   '/': (context) => const Welcome(),
        //   '/signin': (context) => const SignIn(),
        //   '/signup': (context) => const SignUp(),
        //   '/application': (context) => const Application(),
        // },
        // home: const Welcome(),
      ),
    );
  }
}
