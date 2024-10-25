import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/routing/app_router.dart';
import 'package:test_app/core/routing/routes.dart';
import 'package:test_app/core/theming/colors.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Doc App",
        initialRoute: Routes.onBoardingScreen,
        theme: ThemeData(
            primaryColor: ColorsManager.mainBlue,
            scaffoldBackgroundColor: Colors.white),
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
