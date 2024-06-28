import 'package:rivoj_uz_project/common/tools/file_importers.dart';

import 'otp_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: LoginConstants.forgotPassword,
      ),
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
                  LoginConstants.enterPhoneNumber,
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
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: CustomButton(
                onTap: () {
                  ValidationHelper.phoneNumber(
                    context: context,
                    phoneNumber: phoneNumber != null
                        ? ValidationHelper.sortNumbers(phoneNumber!)
                        : null,
                    successCompletion: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(
                            phoneNumber:
                                ValidationHelper.sortNumbers(phoneNumber!),
                          ),
                        ),
                      );
                    },
                  );
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
