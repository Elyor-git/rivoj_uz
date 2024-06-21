import 'package:rivoj_uz_project/feature/auth/constants/login_constants.dart';
import 'package:rivoj_uz_project/feature/auth/service/validation_helper.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/custom_app_bar.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/custom_button.dart';
import 'package:rivoj_uz_project/feature/prrofile/ui/profile_screen.dart';

import '../../tools/file_importers.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  String? newPassword;
  String? repeatPassword;
  bool _isObscure1 = true;
  bool _isObscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LoginConstants.resetPassword),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Text(
                  LoginConstants.createNewPassword,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SizedBox(height: 20.h),
                Text(
                  LoginConstants.newPassword,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                ),
                TextFormField(
                  onChanged: (value) => newPassword = value,
                  obscureText: _isObscure1,
                  decoration: InputDecoration(
                    hintText: '**********',
                    hintStyle: const TextStyle(
                      color: AppColors.darkGrey54,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.lightGrey,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mainBlue,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure1 ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                        size: 23.sp,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure1 = !_isObscure1;
                        });
                      },
                    ),
                  ),
                ),
                Text(
                  LoginConstants.confirmPassword,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        height: 2,
                      ),
                ),
                TextFormField(
                  onChanged: (value) {
                    repeatPassword = value;
                  },
                  obscureText: _isObscure2,
                  decoration: InputDecoration(
                    hintText: '**********',
                    hintStyle: const TextStyle(
                      color: AppColors.darkGrey54,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.lightGrey,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mainBlue,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure2 ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                        size: 23.sp,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure2 = !_isObscure2;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: CustomButton(
                onTap: () {
                  ValidationHelper.validateNewPassword(
                    context: context,
                    successCompletion: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    },
                    newPassword: newPassword,
                    confirmPassword: repeatPassword,
                  );
                },
                text: LoginConstants.save,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
