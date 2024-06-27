import 'package:flutter/material.dart';
import 'package:rivoj_uz_project/common/style/app_colors.dart';

class ModulBar extends StatefulWidget {
  const ModulBar({super.key});

  @override
  State<ModulBar> createState() => _ModulBarState();
}

class _ModulBarState extends State<ModulBar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 160,
          height: 95,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Modul I",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Dars 1",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  LinearProgressIndicator(
                    value: 0.5,
                    minHeight: 8,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: AppColors.darkBlue,
                    backgroundColor: AppColors.whiteGrey,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 160,
          height: 95,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15)
              )
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: Image(
                          image: AssetImage(
                            "assets/icons/coin.png",
                          ),
                        ),
                      ),
                      Text(
                        "120",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Tangalar",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: Image(
                          image: AssetImage(
                            "assets/icons/star.png",
                          ),
                        ),
                      ),
                      Text(
                        "11 000",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Ballar",
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
