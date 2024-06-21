import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';

import '../../../common/style/app_colors.dart';

class ValidationHelper {
  const ValidationHelper._();

  static final _phoneMaskFormatter = MaskTextInputFormatter(
    mask: '(##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  static void phoneNumberAndPassword({
    required BuildContext context,
    String? phoneNumber,
    String? password,
    required VoidCallback successCompletion,
  }) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      _showSnackBar(context, 'Telefon raqamni kiriting');
      return;
    }

    if (password == null || password.isEmpty) {
      _showSnackBar(context, 'Parolni kiriting');
      return;
    }
    successCompletion();
  }

  static void changePassword({
    required BuildContext context,
    required String currentPassword,
    required VoidCallback successCompletion,
    String? oldPassword,
    String? newPassword,
    String? confirmPassword,
  }) {
    if (oldPassword != currentPassword) {
      _showSnackBar(context, 'Joriy parol noto\'g\'ri');
      return;
    }
    validateNewPassword(
      context: context,
      successCompletion: successCompletion,
      confirmPassword: confirmPassword,
      newPassword: newPassword,
    );
  }

  static void phoneNumber({
    required BuildContext context,
    required VoidCallback successCompletion,
    String? phoneNumber,
  }) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      _showSnackBar(context, 'Telefon raqamni kiriting');
      return;
    }

    if (phoneNumber.length != 9) {
      _showSnackBar(context, 'Telefon raqami noto\'g\'ri');
      return;
    }
    successCompletion();
  }

  static void validateNewPassword({
    required VoidCallback successCompletion,
    required BuildContext context,
    String? newPassword,
    String? confirmPassword,
  }) {
    if (newPassword == null || newPassword.isEmpty) {
      _showSnackBar(context, 'Parolni kiriting');
      return;
    }

    if (newPassword != confirmPassword) {
      _showSnackBar(context, 'Parollar mos kelmadi');
      return;
    }

    if (newPassword.length < 8) {
      _showSnackBar(context, 'Parol kamida 8 belgidan iborat bo\'lishi kerak');
      return;
    }
    if (!newPassword.contains(RegExp(r'\d'))) {
      _showSnackBar(context, 'Parolda kamida bir raqam bo\'lishi kerak');
      return;
    }

    if (!newPassword.contains(RegExp(r'[a-zA-Z]'))) {
      _showSnackBar(
        context,
        'Parolda kamida bir harf bo\'lishi kerak',
      );
      return;
    }

    if (!newPassword.contains(RegExp(r'[^\da-zA-Z]'))) {
      _showSnackBar(context, 'Parolda kamida bitta belgi bo\'lishi kerak');
      return;
    }
    successCompletion();
  }

  static void validatePhoneNumber(BuildContext context, String? phoneNumber) {
    if (phoneNumber == null || phoneNumber.isEmpty) {
      _showSnackBar(context, 'Telefon raqamni kiriting');
    } else if (phoneNumber.length != 9) {
      _showSnackBar(context, 'Telefon raqami noto\'g\'ri');
    } else {
      _showSnackBar(context, 'Telefon raqami tasdiqlandi',
          color: AppColors.green);
    }
  }

  static void _showSnackBar(BuildContext context, String message,
      {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color ?? AppColors.red,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        margin: const EdgeInsets.all(16.0),
        elevation: 6.0,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static MaskTextInputFormatter get phoneMaskFormatter => _phoneMaskFormatter;

  static String sortNumbers(String value) {
    List<int> numbers = value
        .replaceAll(RegExp(r'[^0-9]'), '')
        .split('')
        .map(int.parse)
        .toList();

    numbers.sort();

    return numbers.join('');
  }
}
