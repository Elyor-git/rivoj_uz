import 'package:rivoj_uz_project/common/utils/custom_extension.dart';
import 'package:rivoj_uz_project/feature/auth/constants/login_constants.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/custom_app_bar.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/custom_button.dart';
import 'package:rivoj_uz_project/feature/auth/ui/widget/reset_password_screen.dart';

import '../../tools/file_importers.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  final String phoneNumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late List<TextEditingController> otpControllers;
  String code = '';

  void getNumbers() {
    code = '';
    for (var i in otpControllers) {
      code += i.text;
    }
  }

  @override
  void initState() {
    super.initState();
    otpControllers = List.generate(6, (_) => TextEditingController());
  }

  @override
  void dispose() {
    otpControllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: LoginConstants.forgotPassword),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Text(
                  LoginConstants.currentPhoneNumber(widget.phoneNumber),
                  style: context.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(height: 20.h),
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i = 0; i < 6; i++)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: SizedBox(
                            height: 48.h,
                            width: 48.w,
                            child: TextField(
                              controller: otpControllers[i],
                              onChanged: (value) {
                                if (value.length == 1 && i < 5) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              onSubmitted: (value) {
                                if (i == 5) {
                                  for (var i in otpControllers) {
                                    print(i.text);
                                  }
                                }
                              },
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.codeBackground,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.sp),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: context.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  children: [
                    Text(LoginConstants.resendOTP),
                    GestureDetector(
                      onTap: () {
                        /// resend code
                      },
                      child: Text(
                        LoginConstants.clickHere,
                        style: context.textTheme.bodyMedium?.copyWith(
                          color: AppColors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: CustomButton(
                onTap: () {
                  getNumbers();
                  if (code.length == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordScreen(),
                      ),
                    );
                  }
                },
                text: LoginConstants.nextOne,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
