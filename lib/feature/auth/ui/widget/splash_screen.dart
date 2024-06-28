import 'package:rivoj_uz_project/common/tools/file_importers.dart';
import 'package:rivoj_uz_project/feature/auth/ui/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    isLogin();
    super.initState();
  }

  void isLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    // get user in backend ......
    // ....
    if (mounted) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 65.w),
          child: Image.asset(AppIcons.mainLogo),
        ),
      ),
    );
  }
}
