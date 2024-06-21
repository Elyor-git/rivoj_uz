import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';
import 'package:rivoj_uz_project/common/style/app_icons.dart';
import 'package:rivoj_uz_project/feature/prrofile/constants/profile_constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: const AssetImage(AppIcons.mainLogo),
            width: 70.w,
          ),
          Text(
            ProfileConstants.profile,
            style: TextStyle(
              color: AppColors.darkBlue,
              fontWeight: FontWeight.w800,
              fontSize: 17.sp,
            ),
          ),
          SizedBox(width: 100.w),
        ],
      ),
    );
  }
}
