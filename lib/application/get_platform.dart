import 'dart:io';
import 'package:octonote/locator.dart' as sl;

import 'package:flutter/foundation.dart';

abstract class IAppService {
  bool getkIsWeb();
}

class AppService implements IAppService {
  @override
  bool getkIsWeb() {
    return kIsWeb;
  }
}

bool get isIOS => !sl.getIt<AppService>().getkIsWeb() && Platform.isIOS;
bool get isAndroid => !sl.getIt<AppService>().getkIsWeb() && Platform.isAndroid;
bool get isWeb => sl.getIt<AppService>().getkIsWeb();
