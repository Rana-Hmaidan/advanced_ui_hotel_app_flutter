import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/models/hotel_model.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';
import 'package:flutter_advanced_ui/widgets/app_custom_icon_button.dart';
import 'package:flutter_advanced_ui/widgets/location_widget.dart';
import 'package:flutter_advanced_ui/widgets/rate_widget.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class HotelCardView extends StatelessWidget {
  const HotelCardView({super.key, required this.hotelModel});

  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: ClipRRect(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                borderRadius: BorderRadius.circular(20),
                child: Image.network(hotelModel.image, fit: BoxFit.cover),
              ),
            ),
            const Positioned(
              right: 16,
              top: 16,
              child: AppCustomIconButton(
                icon : Icon(
                  Icons.favorite,
                  color: Color(0xffFE2372),
                  size: 25,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GlassContainer(
                width: double.infinity,
                blur: 4,
                color: Colors.black.withOpacity(0.8),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.7),
                    Colors.black45.withOpacity(0.8),
                  ],
                ),
                //--code to remove border
                border: const Border.fromBorderSide(BorderSide.none),
                shadowStrength: 5,
                // shape: BoxShape.circle,
                borderRadius: BorderRadius.circular(16),
                shadowColor: Colors.black.withOpacity(0.6),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        hotelModel.name,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      LocationWidget(location: hotelModel.location, rate: 4.9),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}