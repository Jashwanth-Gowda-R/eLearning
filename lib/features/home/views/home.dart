import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vrook_course/common/widgets/app_bar.dart';
import 'package:vrook_course/common/widgets/search_widgets.dart';
import 'package:vrook_course/features/home/views/widgets/home_widgets.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    // String users = Global.storageService.getString(STORAGE_USER_PROFILE_KEY);
    // var userName = jsonDecode(users)['name'];
    return Scaffold(
      appBar: buildAppBar(title: "Home"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              helloText(),
              userName(),
              SizedBox(
                height: 20.h,
              ),
              const searchBar(),
            ],
          ),
        ),
      ),
    );
  }
}
