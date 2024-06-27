import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/feature/auth/bloc/login_bloc/login_bloc.dart';
import 'package:rivoj_uz_project/feature/auth/bloc/obscure_bloc/obscure_bloc.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/splash_screen.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_bloc.dart';
import 'package:rivoj_uz_project/feature/prrofile/utils/image_picker_utils.dart';


class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient  createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => LoginBloc()),
           BlocProvider(create: (_)=>  ObscureBloc()),
           BlocProvider(create: (_)=>  ImagePickerBloc(ImagePickerUtils())),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Rivoj Kurslari",
            theme: ThemeData(fontFamily: "Archivo"),
            home: const SplashScreen(),
          ),
        );
      },
    );
  }
}
