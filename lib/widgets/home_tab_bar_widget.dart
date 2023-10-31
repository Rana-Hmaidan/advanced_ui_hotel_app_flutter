import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({super.key, required this.label, required this.count, this.isActive = false, required this.onTap});

  final String label;
  final int count;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: isActive ? AppColors.secondary : Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text(
                label,
                style: TextStyle(
                  color: isActive ? Colors.white : AppColors.secondary,
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "$count",
                style: const TextStyle(
                    color: AppColors.lightSecondary,
                    fontSize: 16,
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}