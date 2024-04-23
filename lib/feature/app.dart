import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          home: child,
        );


      },
    );
  }
}
