import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rivoj_uz_project/common/style/app_icons.dart';
import 'package:rivoj_uz_project/common/utils/custom_extension.dart';
import 'package:rivoj_uz_project/feature/auth/bloc/obscure_bloc/obscure_bloc.dart';
import 'package:rivoj_uz_project/feature/auth/bloc/obscure_bloc/obscure_event.dart';
import 'package:rivoj_uz_project/feature/auth/bloc/obscure_bloc/obscure_states.dart';
import 'package:rivoj_uz_project/feature/auth/constants/login_constants.dart';
import 'package:rivoj_uz_project/feature/auth/service/validation_helper.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/blocked_screen.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/custom_button.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/forgot_password_screen.dart';

import '../tools/file_importers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String phoneNumber = "998";
  String password = "asfasd";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
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
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                SizedBox(height: 40.h),
                Text(
                  LoginConstants.phoneNumber,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        height: 2,
                      ),
                ),
                TextFormField(
                  onChanged: (value) => phoneNumber = value,
                  keyboardType: TextInputType.number,
                  inputFormatters: [ValidationHelper.phoneMaskFormatter],
                  style: const TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    labelText: LoginConstants.enterPhoneNumber,
                    prefix: const Text(
                      '+998 ',
                      style: TextStyle(color: AppColors.black),
                    ),
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
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  LoginConstants.password,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        height: 2,
                      ),
                ),
                BlocBuilder<ObscureBloc, ObscureStates>(
                  builder: (context, state) {
                    return TextFormField(
                      onChanged: (value) => password = value,
                      obscureText: state.isObscure,
                      decoration: InputDecoration(
                        labelText: LoginConstants.password,
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
                            state.isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Theme.of(context).primaryColorDark,
                            size: 23.sp,
                          ),
                          onPressed: () {
                            context
                                .read<ObscureBloc>()
                                .add(EnabledOrDisabledObscure());
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            Column(
              children: [
                CustomButton(
                  onTap: () {
                    ValidationHelper.phoneNumberAndPassword(
                      context: context,
                      phoneNumber: phoneNumber,
                      password: password,
                      successCompletion: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BlockedScreen(),
                          ),
                        );
                      },
                    );
                  },
                  text: LoginConstants.enter,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      LoginConstants.forgotPassword,
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColors.mainBlue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
