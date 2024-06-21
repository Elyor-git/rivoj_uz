import 'package:rivoj_uz_project/common/style/app_icons.dart';
import 'package:rivoj_uz_project/feature/prrofile/ui/widget/bottom_sheet.dart';

import '../../../auth/tools/file_importers.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    required this.name,
    required this.imageUrl,
    super.key,
  });

  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.gold,
                radius: 28.sp,
                child: Image(
                  image: const AssetImage(AppIcons.userIcon),
                  height: 45.h,
                  width: 40.w,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 37,
                top: 36,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Theme(
                        data: Theme.of(context)
                            .copyWith(canvasColor: AppColors.white),
                        child: Material(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0.sp),
                            topRight: Radius.circular(16.0.sp),
                          ),
                          child: const CustomBottomSheet(),
                        ),
                      );
                    },
                  ),
                  child: CircleAvatar(
                    radius: 11.sp,
                    backgroundColor: AppColors.red,
                    child: Icon(
                      Icons.edit_outlined,
                      color: AppColors.white,
                      size: 16.sp,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            '   $name',
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
