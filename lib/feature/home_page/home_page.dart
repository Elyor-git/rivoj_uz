import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/app_bar.dart';
import 'widgets/modul_bar.dart';
import 'widgets/progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/icons/background_image.png"),
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                CustomAppBar(),
                30.verticalSpace,
                ModulBar(),
                150.verticalSpace,
                ProgressBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
