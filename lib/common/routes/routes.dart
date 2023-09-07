// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:vrook_course/common/routes/app_route_names.dart';
import 'package:vrook_course/features/application/views/application.dart';
import 'package:vrook_course/features/home/views/home.dart';
import 'package:vrook_course/features/sign_in/views/sign_in.dart';
import 'package:vrook_course/features/sign_up/views/sign_up.dart';
import 'package:vrook_course/features/welcome/views/welcome.dart';
import 'package:vrook_course/global.dart';

class AppPages {
  // static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static List<PageEntity> Routes() {
    return [
      PageEntity(
        path: AppRoutes.Welcome,
        page: const Welcome(),
      ),
      PageEntity(
        path: AppRoutes.Sign_in,
        page: const SignIn(),
      ),
      PageEntity(
        path: AppRoutes.Register,
        page: const SignUp(),
      ),
      // PageEntity(
      //   path: AppRoutes.Forget,
      //   page: const Forget(),
      // ),
      PageEntity(
        path: AppRoutes.Application,
        page: const Application(),
      ),
      PageEntity(
        path: AppRoutes.Home,
        page: const Home(),
      ),
      // PageEntity(
      //   path: AppRoutes.Course,
      //   page: const Course(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Contibitor,
      //   page: const Contibitor(),
      // ),
      // PageEntity(
      //   path: AppRoutes.CourseDetail,
      //   page: const CourseDetail(),
      // ),
      // PageEntity(
      //   path: AppRoutes.MyCourse,
      //   page: const MyCourse(),
      // ),
      // PageEntity(
      //   path: AppRoutes.BuyCourse,
      //   page: const BuyCourse(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Lesson,
      //   page: const Lesson(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Message,
      //   page: const Message(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Chat,
      //   page: const Chat(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Photoview,
      //   page: const PhotoView(),
      // ),
      // PageEntity(
      //   path: AppRoutes.VideoCall,
      //   page: const VideoCall(),
      // ),
      // PageEntity(
      //   path: AppRoutes.VoiceCall,
      //   page: const VoiceCall(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Unotification,
      //   page: const Unotification(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Profile,
      //   page: const Profile(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Account,
      //   page: const Account(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Setting,
      //   page: const Setting(),
      // ),
      // PageEntity(
      //   path: AppRoutes.Search,
      //   page: const Search(),
      // ),
      // PageEntity(
      //   path: AppRoutes.PayWebview,
      //   page: const PayWebview(),
      // ),
    ];
  }

  static MaterialPageRoute GenerateRouteSettings(RouteSettings settings) {
    if (settings.name != null) {
      var result = Routes().where((element) => element.path == settings.name);
      if (result.isNotEmpty) {
        // first open App
        bool deviceFirstOpen = Global.storageService.getDeviceFirstOpen();
        if (result.first.path == AppRoutes.Welcome && deviceFirstOpen) {
          bool isLogin = Global.storageService.getIsLogin();
          //is login
          if (isLogin) {
            return MaterialPageRoute<void>(
                builder: (_) => const Application(), settings: settings);
          }
          return MaterialPageRoute<void>(
              builder: (_) => const SignIn(), settings: settings);
        }
        return MaterialPageRoute<void>(
            builder: (_) => result.first.page, settings: settings);
      }
    }

    return MaterialPageRoute<void>(
        builder: (_) => const SignIn(), settings: settings);
  }
}

class PageEntity<T> {
  String path;
  Widget page;

  PageEntity({
    required this.path,
    required this.page,
  });
}
