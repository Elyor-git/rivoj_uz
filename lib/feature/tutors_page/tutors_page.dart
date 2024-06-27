import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';

import '../../common/style/app_icons.dart';

class TutorsPage extends StatefulWidget {
  const TutorsPage({super.key});

  @override
  State<TutorsPage> createState() => _TutorsPageState();
}

class _TutorsPageState extends State<TutorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/icons/background_image.png"),
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10).r,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const BackButton(
                            color: AppColors.white,
                          ),
                          Text(
                            "Tutors",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 25.sp,
                            ),
                          ),
                          40.horizontalSpace,
                        ],
                      ),
                    ),
                  ),
                  30.verticalSpace,
                  const TutorsItem(),
                  const TutorsItem(),
                  const TutorsItem(),
                  const TutorsItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TutorsItem extends StatelessWidget {
  const TutorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
      child: SizedBox(
        width: double.infinity,
        height: 72.h,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 48.w,
                  height: 48.h,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          AppIcons.tutorIcon,
                        ),
                      ),
                    ),
                  ),
                ),
                10.horizontalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5).r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Starry Eyes",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Hey, I just reviewed your work. It’s good but I think...",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Archivo-Medium",
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
