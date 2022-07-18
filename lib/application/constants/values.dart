import 'dart:io' show Platform;

import 'package:octonote/application/utils/app_service.dart';

class ConstantValues {
  static final int millisecondsBetweenSearchRequests = isWeb
      ? 600
      : Platform.environment.containsKey('FLUTTER_TEST')
          ? 0
          : 600;
  static final int secondsBetweenFetchAttemps = isWeb
      ? 5
      : Platform.environment.containsKey('FLUTTER_TEST')
          ? 0
          : 5;
}
