import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:octonote/locator.dart' as sl;

abstract class IAppService {
  bool getkIsWeb();
  bool getIsIOS();
  bool getIsMacOS();
  bool getIsWindows();
  bool getIsLinux();
  bool getIsAndroid();
}

class AppService implements IAppService {
  @override
  bool getkIsWeb() => kIsWeb;
  @override
  bool getIsIOS() => Platform.isIOS;
  @override
  bool getIsMacOS() => Platform.isMacOS;
  @override
  bool getIsWindows() => Platform.isWindows;
  @override
  bool getIsLinux() => Platform.isLinux;
  @override
  bool getIsAndroid() => Platform.isAndroid;
}

bool get isIOS => sl.getIt<AppService>().getIsIOS();
bool get isMacOS => sl.getIt<AppService>().getIsMacOS();
bool get isWindows => sl.getIt<AppService>().getIsWindows();
bool get isLinux => sl.getIt<AppService>().getIsLinux();
bool get isAndroid => sl.getIt<AppService>().getIsAndroid();
bool get isWeb => sl.getIt<AppService>().getkIsWeb();
