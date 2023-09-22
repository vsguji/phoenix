/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-21 13:04:00
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-22 18:00:40
 * @FilePath: /phoenix/lib/utils/phoenix_text_util.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
/*
 * @Author: your name
 * @Date: 2022-04-29 16:53:03
 * @LastEditTime: 2023-08-22 18:26:54
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /baseui/lib/utils/brn_text_util.dart
 */
import 'package:flutter/widgets.dart';

class PhoenixTextUtil {
  const PhoenixTextUtil._();

  /// 根据 TextStyle 计算 text 宽度。
  static Size textSize(String text, TextStyle style) {
    if (text.isEmpty) return Size.zero;
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size;
  }
}
