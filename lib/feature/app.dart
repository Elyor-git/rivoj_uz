import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/feature/auth/bloc/obscure_bloc/obscure_bloc.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/splash_screen.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_bloc.dart';
import 'package:rivoj_uz_project/feature/prrofile/utils/image_picker_utils.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ObscureBloc()),
        BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils())),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Rivoj Kurslari",
            theme: ThemeData(fontFamily: "Archivo"),
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
