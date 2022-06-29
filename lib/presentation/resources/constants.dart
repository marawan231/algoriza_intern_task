import 'package:flutter/material.dart';

import '../../models/boardin_item_model.dart';
import 'color_manger.dart';

List<BoardItem> boardings = [
  BoardItem(
      Image.asset('assets/images/boarding1.png'),
      'Get Food delivery to your doorstep asap',
      'We have young and professional delivery team that will bring your food as soon as possible to your doorstep'),
  BoardItem(
      Image.asset('assets/images/boarding2.png'),
      'Buy Any Food from your favourite restaurant',
      'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected'),
  BoardItem(
      Image.asset('assets/images/boarding3.png'),
      'Get Food delivery to your doorstep asap',
      'A variety of products to satisfy all tastes are one step away from your finger just if like it click to get it its easy and fast and magical'),
];

const textInButtonStyle = TextStyle(
  color: ColorManager.myWhite,
  fontFamily: 'Poppins',
  fontSize: 18,
  // fontWeight: FontWeight.w600,
  letterSpacing: 1,
);

const TextStyle questionTextStyle = TextStyle(
  color: ColorManager.myBlack,
  fontWeight: FontWeight.w600,
  fontFamily: 'Poppins',
  fontSize: 18,
  // fontWeight: FontWeightManager.regular,
);
