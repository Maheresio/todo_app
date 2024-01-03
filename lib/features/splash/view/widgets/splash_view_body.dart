import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200.h,
        width: 200.w,
        child: const FlutterLogo(),
      ),
    );
  }

  void navToHome() {
    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
    });
  }
}
