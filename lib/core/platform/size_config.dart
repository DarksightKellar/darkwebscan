import 'package:flutter/material.dart';

class SizeConfig {
  final BuildContext context;
  const SizeConfig({@required this.context});
  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;
  bool get isWiderWidth => MediaQuery.of(context).size.height > 700;
  bool get maxPhoneHeight => MediaQuery.of(context).size.height > 600;
  double get onboardButtonWidth => screenWidth < 430 ? 370 : 190;
  double get size35HeightScaled => screenHeight * 0.0385;
  double get size45HeightScaled => screenHeight * 0.0516;
  double get size20HeightScaled => screenHeight * 0.0245;
  double get size15HeightScaled => screenHeight * 0.0176;
  double get size18HeightScaled => screenHeight * 0.022;
  double get size70HeightScaled => screenHeight * 0.084;
  double get size50HeightScaled => screenHeight * 0.061;
  double get size25HeightScaled => screenHeight * 0.031;

  TextStyle get h5Theme => Theme.of(context)
      .textTheme
      .headline5
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.headline5.fontSize));

  TextStyle get h4Theme => Theme.of(context)
      .textTheme
      .headline4
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.headline4.fontSize));

  TextStyle get h3Theme => Theme.of(context)
      .textTheme
      .headline3
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.headline3.fontSize));

  TextStyle get h2Theme => Theme.of(context)
      .textTheme
      .headline2
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.headline2.fontSize));

  TextStyle get h1Theme => Theme.of(context)
      .textTheme
      .headline1
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.headline1.fontSize));

  TextStyle get body2Theme => Theme.of(context)
      .textTheme
      .bodyText2
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.bodyText2.fontSize));

  TextStyle get body1Theme => Theme.of(context)
      .textTheme
      .bodyText1
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.bodyText1.fontSize));

  TextStyle get subtitle1Theme => Theme.of(context)
      .textTheme
      .subtitle1
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.subtitle1.fontSize));

  TextStyle get buttonTextTheme => Theme.of(context)
      .textTheme
      .button
      .copyWith(fontSize: screenScaledSize(Theme.of(context).textTheme.button.fontSize));

  double screenScaledSize(double size) {
    if (size == null) return null;
    if (screenHeight >= 700 && screenWidth >= 400) {
      return size;
    }
    if (screenHeight >= 500 && screenWidth > 350) {
      return size * 0.8;
    }

    return size * 0.6;
  }
}
