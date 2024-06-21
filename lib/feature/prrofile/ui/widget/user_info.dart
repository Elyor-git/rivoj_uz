
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';
import 'package:rivoj_uz_project/feature/auth/service/validation_helper.dart';
import 'package:rivoj_uz_project/feature/prrofile/constants/profile_constants.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  String? oldPassword;
  String? newPassword;
  String? confirmPassword;

  final lastPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmPaswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomListTile(
          title: ProfileConstants.nameSurname,
          text: 'Jahongir Rahmanshikov',
        ),
        CustomListTile(
          title: ProfileConstants.dateOfBirth,
          text: 'December 27, 1990',
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.sp),
              ),
              border: Border.all(
                color: AppColors.grey34,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                vertical: 10.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputPassword(
                    controller: lastPasswordController,
                    title: ProfileConstants.previousPassword,
                    onChanged: (value) => oldPassword = value,
                  ),
                  InputPassword(
                    controller: newPasswordController,
                    title: ProfileConstants.newPassword,
                    onChanged: (value) => newPassword = value,
                  ),
                  InputPassword(
                    controller: confirmPaswordController,
                    title: ProfileConstants.confirmPassword,
                    onChanged: (value) => confirmPassword = value,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          lastPasswordController.clear();
                          newPasswordController.clear();
                          confirmPaswordController.clear();
                          setState(() {});
                        },
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: AppColors.mainBlue,
                            ),
                          ),
                        ),
                        child: Text(
                          ProfileConstants.cancellation,
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: AppColors.mainBlue,
                          ),
                        ),
                      ),
                      FilledButton(
                        onPressed: () {
                          ValidationHelper.changePassword(
                            context: context,
                            oldPassword: oldPassword,
                            currentPassword: '123',
                            newPassword: newPassword,
                            confirmPassword: confirmPassword,
                            successCompletion: () {
                              lastPasswordController.clear();
                              newPasswordController.clear();
                              confirmPaswordController.clear();
                              setState(() {});
                              // ValidationHelper._showSnackBar(
                              //   context,
                              //   'succes',
                              //   color: AppColors.green,
                              // );
                            },
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.mainBlue,
                          ),
                        ),
                        child: Text(
                          ProfileConstants.save,
                          style: TextStyle(fontSize: 13.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const CustomListTile(
            title: '',
            text: 'Biz haqimizda',
          ),
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    required this.title,
    required this.text,
    this.isPassword = false,
    super.key,
  });

  final String title;
  final String text;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.grey34,
            fontSize: 13.sp,
            height: 2.5,
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 45.h,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16.sp),
              ),
              border: Border.all(
                color: AppColors.grey34,
                style: BorderStyle.solid,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Text(
                '    $text',
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class InputPassword extends StatelessWidget {
  const InputPassword({
    required this.controller,
    required this.onChanged,
    required this.title,
    super.key,
  });

  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '  $title',
          style: TextStyle(
            color: AppColors.grey34,
            fontSize: 13.sp,
            height: 2.0,
          ),
        ),
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextField(
              controller: controller,
              onChanged: onChanged,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.sp),
                  ),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusColor: Colors.blue,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.sp),
                  ),
                  borderSide: const BorderSide(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
