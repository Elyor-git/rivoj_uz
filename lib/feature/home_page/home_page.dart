import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rivoj_uz_project/common/model/user_model/user_model.dart';

import 'widgets/app_bar.dart';
import 'widgets/modul_bar.dart';
import 'widgets/progress_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late UserModel user;

  @override
  void initState() {
    user = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage("assets/icons/background_image.png"),
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                CustomAppBar(
                  name: user.name,
                  surname: user.surname,
                ),
                30.verticalSpace,
                const ModulBar(),
                150.verticalSpace,
                const ProgressBar(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
