import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_animation_app/core/utils/constants/app_sizer.dart';
import 'package:movie_animation_app/core/utils/constants/app_texts.dart';
import 'package:movie_animation_app/routes/app_routes.dart';

import 'core/bindings/controller_binder.dart';
import 'core/utils/theme/theme.dart';
import 'features/movies/movies_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.init,
          getPages: AppRoute.routes,
          initialBinding: ControllerBinder(),
          themeMode: ThemeMode.light,
          title: AppText.appName,
          home: const MoviesPage(),
        );
      },
    );
  }
}
