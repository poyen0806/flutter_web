import 'package:flutter/material.dart';
import 'package:flutter_web/enum/platform.dart';
import 'package:provider/provider.dart';

/// 給予裝置寬度（通常在最外層元件如 [MaterialApp]），判斷平台為電腦、平板，或手機。
///
/// 由於裝置寬度發生變化時，部份 [Widget] 會進行重新渲染，不需使用 [Consumer] 監聽，
/// 這個 [Provider] 並沒有 mixin [ChangeNotifier]，若發現裝置寬度改變時，並沒有
/// 重新渲染，請使用 [LayoutBuilder]
///
/// Example:
/// ```dart
/// LayoutBuilder(builder: (context, constraints) {
///   final platform =
///     context.select((PlatformViewModel value) => value.platform);
///   return WidgetToRerender();
/// }),
/// ```
class PlatformViewModel with ChangeNotifier {
  /// 平台裝置大小
  Size size = const Size.square(0);

  /// 取得當前平台裝置的類型
  Platform get platform {
    if (size.width >= Platform.computer.minWidth) {
      return Platform.computer;
    } else if (size.width >= Platform.tablet.minWidth) {
      return Platform.tablet;
    } else {
      return Platform.mobile;
    }
  }

  /// Get the current platform's width
  double get width => size.width;

  /// Get the current platform's height
  double get height => size.height;

  /// Get the side padding of the current platform
  double get sidePadding {
    switch (platform) {
      case Platform.computer:
        return (width - platform.minWidth + 100) / 2;
      case Platform.tablet:
        return 25;
      case Platform.mobile:
        return 0;
    }
  }
}
