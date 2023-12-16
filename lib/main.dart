import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sportzone/app/theme/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(SportZoneApp());
}

class SportZoneApp extends StatelessWidget {
  const SportZoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: "SportZone",
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: SportZoneAppTheme.lightTheme,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      );
    });
  }
}
