import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:healthcareapp/strings.dart';

class AutoSlidingImageContainer extends StatefulWidget {
  @override
  _AutoSlidingImageContainerState createState() =>
      _AutoSlidingImageContainerState();
}

class _AutoSlidingImageContainerState extends State<AutoSlidingImageContainer> {
  final List<String> imageUrls = [
    AppStrings.carouselImage1,
    AppStrings.carouselImage2,
    AppStrings.carouselImage3,
    AppStrings.carouselImage4,
  ];

  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Carousel with images
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CarouselSlider.builder(
            carouselController: _carouselController, // Attach the controller
            itemCount: imageUrls.length,
            itemBuilder: (context, index, realIdx) {
              return GestureDetector(
                onTap: () {
                  // Handle tap event for each image (e.g., open image details)
                  print('Image $index clicked!');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              viewportFraction: 0.85,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),

        // Custom animated dot indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrls.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _carouselController.animateToPage(entry.key),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
                height: 12.0,
                width: _currentIndex == entry.key
                    ? 24.0
                    : 12.0, // Expands the current dot
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_currentIndex == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
