
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:rivoj_uz_project/feature/prrofile/ui/widget/custom_app_bar.dart';
import 'package:rivoj_uz_project/feature/prrofile/ui/widget/user_card.dart';
import 'package:rivoj_uz_project/feature/prrofile/ui/widget/user_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                UserCard(
                  name: 'Jahongir Rahmanshikov',
                  imageUrl: 'imageUrl',
                ),
                UserInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
