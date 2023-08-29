import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vrook_course/common/widgets/app_bar.dart';

class Application extends ConsumerStatefulWidget {
  const Application({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends ConsumerState<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Home Page"),
      body: Container(),
    );
  }
}
