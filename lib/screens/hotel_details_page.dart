import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_ui/models/hotel_model.dart';
import 'package:flutter_advanced_ui/shared/theme_constants.dart';
import 'package:flutter_advanced_ui/shared/widget_extention.dart';
import 'package:flutter_advanced_ui/widgets/app_custom_icon_button.dart';
import 'package:flutter_advanced_ui/widgets/location_widget.dart';
import 'package:flutter_advanced_ui/widgets/services_list_section.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HotelDetailsPage extends StatefulWidget {
  const HotelDetailsPage({super.key, required this.model});

  final HotelModel model;

  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: context.screenHeight * 0.35,
            pinned: true,
            floating: true,
            leading: Container(
              margin: const EdgeInsets.only(left: 16),
              child: AppCustomIconButton(
                onTap: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                    CupertinoIcons.back,
                    size: 25,
                  ),
              ),
            ),
            leadingWidth: 70,
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 16),
                child: const AppCustomIconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Color(0xffFE2372),
                    size: 25,
                  ),
                ),
              ),
            ],
            flexibleSpace: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(28),
                )
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  FlexibleSpaceBar(
                    background: PageView.builder(
                      controller: _pageController,
                      itemCount: 4,
                      itemBuilder: (_, index) => Image.network(
                        widget.model.image, 
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    margin: const EdgeInsets.only(bottom: 60),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadiusDirectional.horizontal(
                        start: Radius.circular(16),
                      ),
                    ),
                    child: GlassContainer(
                      blur: 15,
                      color: Colors.black.withOpacity(0.9),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                        Colors.white.withOpacity(0.9),
                        Colors.black45.withOpacity(0.9),
                        ],
                      ),
                      //--code to remove border
                      border: const Border.fromBorderSide(BorderSide.none),
                      shadowStrength: 5,
                      // shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(16),
                      shadowColor: Colors.black.withOpacity(0.6),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$15.99/',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'night',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                     ),
                    ),
                ],
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 4,
                  effect: const ScrollingDotsEffect(
                    dotHeight: 7,
                    dotWidth: 7,
                    activeDotScale: 1.5,
                    dotColor: AppColors.secondary,
                  ),
                ),
              ),
            ), 
          ), 
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.model.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: AppColors.secondary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  LocationWidget(
                    location: widget.model.location, 
                    rate: 4.9,
                    rateTextColor: AppColors.secondary,
                  ),
                  const SizedBox(height: 12),
                  const Divider(color: AppColors.greyColor , thickness: 1.5, ),
                  const SizedBox(height: 12),
                  ServicesListSection(),
                ],
              ),
            ),
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => Text(
          //       'Item $index',
          //       style: const TextStyle(
          //         fontSize: 16,
          //         color: Colors.black,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}