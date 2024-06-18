import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/feature/home_page/home_page.dart';

import 'darslar_page/darslar_page.dart';
import 'notification_page/notification_page.dart';
import 'tutors_page/tutors_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Rivoj Kurslari",
          theme: ThemeData(fontFamily: "Archivo"),
          home: TutorsPage(),
        );
      },
    );
  }
}
