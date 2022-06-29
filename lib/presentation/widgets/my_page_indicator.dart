import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../resources/color_manger.dart';
import '../resources/constants.dart';

class MyPageIndicator extends StatelessWidget {
  const MyPageIndicator({Key? key, required this.boardController})
      : super(key: key);
  final PageController boardController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: boardController,
      count: boardings.length,
      effect: const SlideEffect(
          spacing: 5.0,
          radius: 4.0,
          // expansionFactor: 2,
          dotWidth: 18,
          dotHeight: 6.0,
          strokeWidth: 1.5,
          dotColor: ColorManager.myGrey,
          activeDotColor: ColorManager.myBrown),
    );
  }
}
