import 'package:algoriza_task/presentation/resources/color_manger.dart';
import 'package:algoriza_task/presentation/resources/routes_manager.dart';
import 'package:algoriza_task/presentation/widgets/custom_textfield_personal.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom_text_button.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/custom_heading1.dart';
import '../../widgets/google_button.dart';
import '../../widgets/heading2.dart';
import '../../widgets/phone_number_and_country_textfield.dart';
import '../../widgets/policy_text.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  _buildBody(context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading2(text: 'Welcome to fashion daily'),
          const CustomHeading1(text: 'Register'),
          const PersonalTextField(
            hintText: 'Eg . example@email.com',
            widget: Text(
              'Email',
              style: TextStyle(
                color: ColorManager.myLightBlack,
                fontFamily: 'Familiar Pro',
              ),
            ),
          ),
          const PhoneCountryTextField(),
          const PersonalTextField(
            hintText: 'Password',
            widget: Text(
              'Password',
              style: TextStyle(
                color: ColorManager.myLightBlack,
                fontFamily: 'Familiar Pro',
              ),
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: ColorManager.myBlack,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          const CustomButton(text: 'Register'),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          const CustomDivider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          const GoogleButton(),
          BottomTextButton(
            isLogin: false,
            onPressed: () {
              Navigator.pushReplacementNamed(context, Routes.loginRoute);
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'By regestering your account, you are agree to our ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.myLightBlack,
                  fontSize: 13,
                  fontFamily: 'Familiar Pro',
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'terms and condition',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 14,
                  ),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.myWhite,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: CustomImageAppBar(),
      ),
      body: _buildBody(context),
    );
  }
}
