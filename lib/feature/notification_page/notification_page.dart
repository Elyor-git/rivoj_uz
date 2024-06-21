import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
                          BackButton(
                            color: AppColors.white,
                          ),
                          Text(
                            "Eslatmalar",
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
                  NotificationItem(),
                  NotificationItem(),
                  NotificationItem(),
                  NotificationItem(),
                  NotificationItem(),
                  NotificationItem(),
                  NotificationItem(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
      child: SizedBox(
        width: double.infinity,
        height: 120.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                5.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "21 march 2024",
                      style: TextStyle(
                        color: AppColors.black50,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "19:21",
                      style: TextStyle(
                        color: AppColors.black50,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                5.verticalSpace,
                Text(
                  "Homework not done",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 13.sp,
                  ),
                ),
                10.verticalSpace,
                Text(
                  "Homework time! Please complete your lesson unit 12.3. Good luck",
                  style: TextStyle(
                    color: AppColors.black50,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
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
