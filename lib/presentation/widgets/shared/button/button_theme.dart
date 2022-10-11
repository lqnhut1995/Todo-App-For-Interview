import 'package:flutter/material.dart';
import 'package:interview_project/constant/colors.dart';

import 'package:interview_project/constant/constant.dart';

final buttonTheme = ButtonThemeData(
  buttonColor: IColors.primaryColor,
  textTheme: ButtonTextTheme.primary,
  padding: const EdgeInsets.all(Spacing.s),
  colorScheme: ColorScheme.light(
    primary: IColors.primaryColor,
    secondary: IColors.secondaryColor,
    secondaryContainer: IColors.veryDarkGrayishBlue,
  ),
);

const floatingActionButtonTheme = FloatingActionButtonThemeData(
  elevation: 0.0,
  focusElevation: 0.0,
  hoverElevation: 0.0,
  disabledElevation: 0.0,
  highlightElevation: 0.0,
  shape: RoundedRectangleBorder(),
  backgroundColor: IColors.primaryColor,
);
