import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';
import 'package:rivoj_uz_project/feature/auth/tools/file_importers.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    required this.surname,
    required this.name,
    super.key,
  });

  final String name;
  final String surname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          const SizedBox(
            width: 65,
            height: 65,
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/icons/user_icon.png"),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    100,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Xush kelibsiz,",
                style: TextStyle(color: AppColors.white, fontSize: 15),
              ),
              Text(
                "$surname $name",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                  fontSize: 25,
                ),
              )
            ],
          ),
         100.horizontalSpace,
          const SizedBox(
            width: 35,
            height: 35,
            child: Image(
              image: AssetImage(
                "assets/icons/bell.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
