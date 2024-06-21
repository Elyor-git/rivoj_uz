import 'package:rivoj_uz_project/common/utils/custom_extension.dart';
import '../../../../common/style/app_colors.dart';

import '../../tools/file_importers.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    super.key,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          left: 12,
          bottom: 12,
        ),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SizedBox(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.sp),
                ),
                color: AppColors.mainBlue30,
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
