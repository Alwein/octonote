import 'package:flutter/material.dart';
import 'package:octonote/application/utils/app_service.dart';

class FormFactor {
  static double desktop = 900;
  static double tablet = 600;
  static double phone = 300;
}

enum ScreenType { watch, phone, tablet, desktop }

ScreenType getSize(BuildContext context) {
  final deviceWidth = MediaQuery.of(context).size.width;
  if (deviceWidth > FormFactor.desktop) return ScreenType.desktop;
  if (deviceWidth > FormFactor.tablet) return ScreenType.tablet;
  if (deviceWidth > FormFactor.phone) return ScreenType.phone;
  return ScreenType.watch;
}

extension ScreenTypeEx on ScreenType {
  bool get isSmallerThanTablet => this == ScreenType.phone || this == ScreenType.watch;
  bool get isWebDesktopView => isWeb && (this != ScreenType.phone && this != ScreenType.watch);
  bool get isGreatherThanMobile => this != ScreenType.phone && this != ScreenType.watch;
}
