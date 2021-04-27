import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T> showPlatformDialog<T>({
  @required BuildContext context,
  @required WidgetBuilder builder,
  @Deprecated('Use barrierDismissible.') bool androidBarrierDismissible = true,
  bool barrierDismissible,
  RouteSettings routeSettings,
  bool useRootNavigator = true,
  bool materialUseSafeArea = true,
  Color materialBarrierColor,
}) {
  if (Platform.isIOS) {
    return showDialog<T>(
      context: context,
      builder: builder,
      barrierDismissible: barrierDismissible ?? androidBarrierDismissible,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      useSafeArea: materialUseSafeArea,
      //child: , deprecated
      barrierColor: materialBarrierColor,
    );
  } else {
    return showCupertinoDialog<T>(
      context: context,
      builder: builder,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      barrierDismissible: barrierDismissible ?? false,
    );
  }
}
