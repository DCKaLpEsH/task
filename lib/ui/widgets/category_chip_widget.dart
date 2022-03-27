import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_colors.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);
  final String label;
  final bool isSelected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 20.w,
      ),
      child: ChoiceChip(
        label: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : AppColors.mineShaft,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        selected: isSelected,
        backgroundColor: Colors.white,
        selectedColor: AppColors.sunsetOrange,
        side: const BorderSide(
          color: AppColors.sunsetOrange,
        ),
        disabledColor: Colors.white,
        padding: EdgeInsets.all(10.r),
        onSelected: onSelected,
      ),
    );
  }
}
