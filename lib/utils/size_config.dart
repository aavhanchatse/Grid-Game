import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SizeConfig {
  SizeConfig._();

  // static MediaQueryData _mediaQueryData;

  static double screenHeight;
  static double screenWidth;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  // static double _safeAreaHorizontal;
  // static double _safeAreaVertical;
  // static double safeBlockHorizontal;
  // static double safeBlockVertical;

  static void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      screenWidth = constraints.maxWidth;
      screenHeight = constraints.maxHeight;
    } else {
      screenHeight = constraints.maxWidth;
      screenWidth = constraints.maxHeight;
    }
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }

  static double setSp(num size) => size * blockSizeVertical;
  static double setHeight(num size) => size * blockSizeVertical;
  static double setWidth(num size) => size * blockSizeHorizontal;
}

extension SizeExtensionInteger on num {
  num get t => SizeConfig.setSp(this);
  num get h => SizeConfig.setHeight(this);
  num get w => SizeConfig.setWidth(this);
}
