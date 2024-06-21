import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';

class DarsModulBar extends StatefulWidget {
  const DarsModulBar({super.key});

  @override
  State<DarsModulBar> createState() => _DarsModulBarState();
}

class _DarsModulBarState extends State<DarsModulBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20).r,
      child: SizedBox(
        width: double.infinity,
        height: 440.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.whiteGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
