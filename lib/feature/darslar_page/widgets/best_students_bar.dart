import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/style/app_icons.dart';

import '../../../common/style/app_colors.dart';

class BestStudentsBar extends StatefulWidget {
  const BestStudentsBar({super.key});

  @override
  State<BestStudentsBar> createState() => _BestStudentsBarState();
}

class _BestStudentsBarState extends State<BestStudentsBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Best Students",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 25.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        10.verticalSpace,
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BestStudentItem(
              name: "Ergashev Ali",
              medalNumber: AppIcons.medal1,
              score: "100",
            ),
            BestStudentItem(
              name: "Ergashev Ali",
              medalNumber: AppIcons.medal2,
              score: "10 000",
            ),
            BestStudentItem(
              name: "Ergashev Ali",
              medalNumber: AppIcons.medal3,
              score: "8 900",
            ),
          ],
        )
      ],
    );
  }
}

class BestStudentItem extends StatelessWidget {
  const BestStudentItem({
    super.key,
    required this.medalNumber,
    required this.score,
    required this.name,
  });

  final String medalNumber;
  final String score;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 85.w,
            child: Stack(
              children: [
                SizedBox(
                  width: 80.w,
                  height: 80.h,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      image: DecorationImage(
                        image: AssetImage(AppIcons.userIcon),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 33.w,
                    height: 35.h,
                    child: Image(
                      image: AssetImage(
                        medalNumber,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5).r,
            child: Text(
              score,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            width: 120.w,
            height: 30.h,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: AppColors.whiteSmoke,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
