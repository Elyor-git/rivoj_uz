import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/style/app_icons.dart';

import '../../../common/style/app_colors.dart';

class DarslarAppBar extends StatefulWidget {
  const DarslarAppBar({super.key});

  @override
  State<DarslarAppBar> createState() => _DarslarAppBarState();
}

class _DarslarAppBarState extends State<DarslarAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Darslar",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 95.h,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).r,
                  child: SizedBox(
                    width: double.infinity,
                    height: 40.h,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10).r,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 32.w,
                                  height: 32.h,
                                  child: const Image(
                                    image: AssetImage(
                                      AppIcons.coin,
                                    ),
                                  ),
                                ),
                                20.horizontalSpace,
                                Text(
                                  "120",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            90.horizontalSpace,
                            Row(
                              children: [
                                Text(
                                  "12 000",
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                20.horizontalSpace,
                                SizedBox(
                                  width: 32.w,
                                  height: 32.h,
                                  child: const Image(
                                    image: AssetImage(
                                      AppIcons.star,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 90.w,
                  height: 90.h,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          AppIcons.userIcon,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
