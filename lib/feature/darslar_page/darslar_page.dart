import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/best_students_bar.dart';
import 'widgets/dars_modul_bar.dart';
import 'widgets/darslar_app_bar.dart';

class DarslarPage extends StatefulWidget {
  const DarslarPage({super.key});

  @override
  State<DarslarPage> createState() => _DarslarPageState();
}

class _DarslarPageState extends State<DarslarPage> {
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
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DarslarAppBar(),
                  30.verticalSpace,
                  BestStudentsBar(),
                  20.verticalSpace,
                  DarsModulBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
