import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../resources/color_manger.dart';

class PhoneCountryTextField extends StatelessWidget {
  const PhoneCountryTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone Number',
          style: TextStyle(
            fontFamily: 'Lato',
            color: ColorManager.myLightBlack,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .01,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFDFCFF),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: ColorManager.myGrey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(3)),
          ),
          child: InternationalPhoneNumberInput(
            spaceBetweenSelectorAndTextField: 0,
            onInputChanged: (PhoneNumber number) {
              //print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              // print(value);
            },
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.DROPDOWN,
            ),
            ignoreBlank: false,
            onSubmit: () {},
            validator: (v) {
              if (v != '01014235482') {
                return 'Phone number is not registered';
              }
              return null;
            },
            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle: const TextStyle(color: Colors.black),
            inputBorder: InputBorder.none,
            inputDecoration: const InputDecoration(
              contentPadding: EdgeInsets.only(left: 8.0),
              hintText: 'Eg. 01014235482',
              hintStyle: TextStyle(
                color: Colors.black45,
              ),
              border: InputBorder.none,
              isDense: true,
            ),
            formatInput: false,
            keyboardType: const TextInputType.numberWithOptions(
                signed: true, decimal: true),
            onSaved: (PhoneNumber number) {
              // print('On Saved: $number');
            },
          ),
        ),
      ],
    );
  }
}
