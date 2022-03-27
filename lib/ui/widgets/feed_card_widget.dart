import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';

class FeedCardWidget extends StatelessWidget {
  const FeedCardWidget({
    Key? key,
    required this.assetPath,
    required this.name,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String assetPath;
  final String name;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: AppColors.mineShaft,
            blurRadius: 10,
            spreadRadius: 0.05,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              "assets/images/$assetPath.jpg",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 8.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "$name ",
                          style: TextStyle(
                            color: AppColors.mineShaft,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                        TextSpan(
                          text: title,
                          style: TextStyle(
                            color: AppColors.mineShaft,
                            fontSize: 15.sp,
                          ),
                        ),
                        TextSpan(
                          text: "\n$subtitle",
                          style: TextStyle(
                            color: AppColors.mineShaft,
                            fontSize: 15.sp,
                          ),
                        ),
                        TextSpan(
                          text: "\n23 min ago",
                          style: TextStyle(
                            color: AppColors.sunsetOrange,
                            fontSize: 13.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/$assetPath.jpg",
                  ),
                  radius: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
