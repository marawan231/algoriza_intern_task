import 'package:flutter/material.dart';

import '../resources/color_manger.dart';
import 'default_container_for_pay.dart';

class PersonalTextField extends StatelessWidget {
  const PersonalTextField({
    Key? key,
    required this.hintText,
    this.prefixIcon,
    this.controller,
    required this.widget,
    this.width = 0.92,
    this.height = 0.06,
    this.borderColore = ColorManager.myLightTeal,
    this.suffixIcon,
  }) : super(key: key);
  final double height;
  final double width;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Widget widget;
  final Color borderColore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget,
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        DefaultContainerForPay(
          borderColor: borderColore,
          width: width,
          height: height,
          child: TextFormField(
            textAlign: TextAlign.left,
            controller: controller,
            decoration: InputDecoration(
              // contentPadding: const EdgeInsets.only(left: 15, top: 17),
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                color: ColorManager.myGrey,
                fontFamily: 'Lato',
                fontSize: 16,
              ),
              alignLabelWithHint: false,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
          ),
        ),
      ],
    );
  }
}
