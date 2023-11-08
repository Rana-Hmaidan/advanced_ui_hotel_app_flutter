import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';
import 'package:flutter_advanced_ui/shared/widget_extention.dart';

class ServicesListSection extends StatelessWidget {
  const ServicesListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Amenities',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.secondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(4, (index) => Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: AppColors.greyColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Icon(
                      Icons.wifi,
                      size: 25,
                      color: AppColors.secondary,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Wi-Fi',
                      style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ).addSeparator(SizedBox(width: context.screenWidth * 0.03,)),
          ),
        )
      ],
    );
  }
}