abstract class LoginConstants {
  const LoginConstants._();

  static String signAccount = 'Akkauntga kirish';
  static String phoneNumber = 'Telefon raqam';
  static String enterPhoneNumber = 'Telefon raqamingizni kiriting';
  static String password = 'Parol';
  static String enter = 'Kirish';
  static String forgotPassword = 'Parolni unutdingizmi ?';
  static String resetPassword = 'Parolni qayta tiklash';
  static String resendOTP = 'OTP kod qayta yuborilsinmi?  ';
  static String clickHere = 'Bu yerni bosing.';
  static String createNewPassword = 'Yangi parol yarating';
  static String newPassword = 'Yangi parol';
  static String confirmPassword = 'Parolni tasdiqlang';
  static String nextOne = 'Keyingisi';
  static String save = 'Saqlash';

  static String currentPhoneNumber(String phoneNumber) =>
      'Kod +998*****${phoneNumber.substring(7)} raqamiga jo\'natildi';
}
