import 'package:flutter/material.dart';

import '../resources/color_manger.dart';
import '../resources/constants.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({Key? key, required this.onPressed}) : super(key: key);
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          backgroundColor: ColorManager.myTeal,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .32,
            vertical: MediaQuery.of(context).size.height * .02,
          ),
        ),
        onPressed: onPressed,
        child: const Text('Get Started', style: textInButtonStyle),
      ),
    );
  }
}
