import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScreenUtilSize {
  const ScreenUtilSize._();
  static const double width = 390;
  static const double height = 844;
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

enum MessageType {
  info,
  warning,
  success,
  danger,
}

class ConstantUrl {
  static const url =
      'https://6a4619a1-df45-4f2d-86d4-c5504776ea72.mock.pstmn.io/api/v1/';
}
