import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:master_avtar/helpers/app_theme.dart';
import 'package:master_avtar/helpers/colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

Widget pinLength(
    {BuildContext context,
    Function onChange,
    TextEditingController controller}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    child: PinCodeTextField(
      onChanged: onChange,
      length: 4, controller: controller,
      obsecureText: false,
      textInputType: TextInputType.number,
      animationType: AnimationType.fade,
      validator: (v) {
        if (v.length < 3) {
          return "I'm from validator";
        } else {
          return null;
        }
      },
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white.withOpacity(0),
      textInputAction: TextInputAction.done,
      enableActiveFill: true,
      enabled: true, animationCurve: Curves.ease,
      autoFocus: true,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      autoDisposeControllers: true, autoDismissKeyboard: true,
      pinTheme: PinTheme(
        selectedColor: AppTheme.primaryColor,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(10),
        fieldHeight: 40,
        fieldWidth: 70,
        activeFillColor: Colors.white,
        inactiveColor: Colors.transparent,
        activeColor: AppTheme.primaryColor,
        disabledColor: AppTheme.primaryColor,
        borderWidth: .5,
        selectedFillColor: AppTheme.thirdColor,
        inactiveFillColor: Color(
          getColorHexFromStr("#F1F2F7"),
        ),
      ),

      //  shape: PinCodeFieldShape.box,
      //  borderRadius: BorderRadius.circular(5),
      //  fieldWidth: 60,
//                  activeFillColor: Color(
//                    getColorHexFromStr("#F5F5F5"),
//                  ),
    ),
  );
}
