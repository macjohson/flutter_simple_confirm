/// 简单的确认弹出窗
library simple_confirm;

import 'dart:ui';

import 'package:flutter/material.dart';

part 'source/Inherited.dart';
part 'source/button.dart';
part 'source/confirm.dart';
part 'source/content.dart';
part 'source/main-box.dart';
part 'source/mask.dart';
part 'source/model.dart';
part 'source/title.dart';

class SimpleConfirm {
  /// 显示弹出窗
  /// 关闭 [Navigator.pop]
  /// [options] 详见 [SimpleConfirmOptions]
  /// [T]为返回的结果，可通过[SimpleConfirmOptions.onConfirm]返回，例如在[SimpleConfirmOptions.onConfirm]函数中 Navigator.of(context).pop(1)
  static Future<T?> show<T>(BuildContext context,
      {required SimpleConfirmOptions options}) async {
    final res = await Navigator.push(
        context,
        PageRouteBuilder(
            pageBuilder: (_, animation, __) =>
                _Confirm(animation: animation, options: options),
            opaque: false,
            transitionDuration: const Duration(milliseconds: 200),
            reverseTransitionDuration: const Duration(milliseconds: 200)));

    if (res is T) {
      return res;
    }
  }
}
