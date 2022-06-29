import 'package:algoriza_task/presentation/resources/color_manger.dart';
import 'package:algoriza_task/presentation/widgets/bottom_text_button.dart';
import 'package:algoriza_task/presentation/widgets/custom_app_bar.dart';
import 'package:algoriza_task/presentation/widgets/custom_button.dart';
import 'package:algoriza_task/presentation/widgets/custom_divider.dart';
import 'package:algoriza_task/presentation/widgets/custom_heading1.dart';

import 'package:algoriza_task/presentation/widgets/google_button.dart';
import 'package:algoriza_task/presentation/widgets/heading2.dart';
import 'package:algoriza_task/presentation/widgets/phone_number_and_country_textfield.dart';
import 'package:algoriza_task/presentation/widgets/policy_text.dart';
import 'package:flutter/material.dart';

import '../../resources/routes_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  _buildBody(context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading2(text: 'Welcome to Fashion Daily'),
          const CustomHeading1(text: 'Sign in'),
          const PhoneCountryTextField(),
          const CustomButton(text: 'Sign in'),
          const CustomDivider(),
          const GoogleButton(),
          BottomTextButton(
            isLogin: true,
            onPressed: () {
              Navigator.pushNamed(context, Routes.registerRoute);
            },
          ),
          const PolicyText(
            text:
                'Use the application according to policy rules. Any kind of violation will be subject to sanctions',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.myWhite,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: CustomImageAppBar(),
      ),
      body: _buildBody(context),
    );
  }
}
