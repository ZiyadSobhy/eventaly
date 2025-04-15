import 'package:eventaly/config/theme/theme_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/resources/routes/routes_manger.dart';

class EventalyApp extends StatelessWidget {
  const EventalyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 841),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (context, child) =>MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeManger.light,
        onGenerateRoute: RouteMangers.router,
        initialRoute: RouteMangers.signIn,
      ),

    );
  }
}
