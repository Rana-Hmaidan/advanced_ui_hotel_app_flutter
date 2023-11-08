import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';
import 'package:flutter_advanced_ui/widgets/rate_widget.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key, required this.location, required this.rate, this.rateTextColor});

  final String location;
  final double rate;
  final Color? rateTextColor;

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.secondary,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    location,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppColors.secondary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                RateWidget(doubleRate: rate, textColor: rateTextColor),
              ],
            );
  }
}