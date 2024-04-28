import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          SizedBox(
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
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Xush kelibsiz,",
                style: TextStyle(color: AppColors.white, fontSize: 15),
              ),
              Text(
                "Ergashev Ali.",
                style: TextStyle(color: AppColors.white, fontSize: 25),
              )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          SizedBox(
            width: 35,
            height: 35,
            child: Image(
              image: AssetImage(
                "assets/icons/percentage.png",
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
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
