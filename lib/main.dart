import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:transaction_plus/page/index.dart';
import 'package:transaction_plus/utils/api_exception.dart';
import 'package:transaction_plus/utils/mqtt_helper.dart';
import 'package:transaction_plus/utils/navigator_helper.dart';
import 'package:transaction_plus/utils/toast_utils.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    FlutterError.onError = _errorHandler;
    runApp(MyApp());
  }, (Object error, StackTrace stackTrace) {
    _errorHandler(FlutterErrorDetails(exception: error, stack: stackTrace));
  });
}

//错误信息处理
void _errorHandler(FlutterErrorDetails details) async {
  FlutterError.dumpErrorToConsole(details);
  if (details.exception != null) {
    if (details.exception is ApiException) {
      final ApiException e = details.exception as ApiException;
      final int code = e.code;
      final String message = e.message;
      switch (code) {
        case 401:
          final navigatorHelper = await NavigatorHelper.navigatorState;
          ToastUtils.showToast(msg: message);
          navigatorHelper.popUntil((Route route) => route.isFirst);
          break;
        case 403:
          final navigatorHelper = await NavigatorHelper.navigatorState;
          ToastUtils.showToast(msg: message);
          navigatorHelper.popUntil((Route route) => route.isFirst);
          break;
        default:
          ToastUtils.showToast(msg: message);
          break;
      }
    } else if (details.exception is SocketException) {
    } else if (details.exception is TimeoutException) {}
  }
}
