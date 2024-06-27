import 'package:rivoj_uz_project/common/style/app_icons.dart';
import 'package:rivoj_uz_project/common/utils/custom_extension.dart';
import 'package:rivoj_uz_project/feature/auth/constants/login_constants.dart';

import '../../tools/file_importers.dart';

class BlockedScreen extends StatelessWidget {
  const BlockedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          SizedBox(height: 80.h),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 60.w,
              vertical: 5.h,
            ),
            child: const Image(
              image: AssetImage(AppIcons.mainLogo),
            ),
          ),
          SizedBox(height: 20.h),
          Center(
            child: Text(
              LoginConstants.signAccount,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(height: 60.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      const Image(
                        image: AssetImage(AppIcons.cancel),
                        width: 100,
                        height: 80,
                      ),
                      Text(
                        'Sizni darsdan chetlashririshdi!',
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 3,
                        ),
                      ),
                      Text(
                        'Iltimos operatorga murojat qiling',
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '+998 33 967 06 40',
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          height: 3,
                        ),
                      ),
                    ],
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
