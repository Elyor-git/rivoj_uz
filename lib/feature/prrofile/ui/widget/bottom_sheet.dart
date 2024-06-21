import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';
import 'package:rivoj_uz_project/common/style/app_icons.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_bloc.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_event.dart';
import 'package:rivoj_uz_project/feature/prrofile/bloc/image_picker/image_picker_states.dart';
import 'package:rivoj_uz_project/feature/prrofile/constants/profile_constants.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';


class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: BlocBuilder<ImagePickerBloc, ImagePickerStates>(
        builder: (context, state) {
          return Wrap(
            children: [
              Center(
                child: Text(
                  ProfileConstants.changeThePicture,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    height: 2.5,
                  ),
                ),
              ),
              MediaButton(
                onTap: () {
                  context.read<ImagePickerBloc>().add(CameraCapture());
                },
                image: AppIcons.camera,
                title: ProfileConstants.takePictures,
              ),
              MediaButton(
                onTap: () {
                  context.read<ImagePickerBloc>().add(GalleryImagePicker());
                },
                image: AppIcons.folder,
                title: ProfileConstants.getFromGallery,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MediaButton extends StatelessWidget {
  const MediaButton({
    required this.onTap,
    required this.image,
    required this.title,
    super.key,
  });

  final VoidCallback onTap;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: ZoomTapAnimation(
        onTap: onTap,
        child: SizedBox(
          width: double.infinity,
          height: 140.h,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.sp),
              ),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 35.sp,
                    backgroundColor: AppColors.codeBackground,
                    child: Image(
                      image: AssetImage(image),
                      width: 40.w,
                      height: 40.h,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
