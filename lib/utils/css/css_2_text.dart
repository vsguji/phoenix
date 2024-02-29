/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-08-31 14:41:55
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2024-02-29 14:34:31
 * @FilePath: /phoenix/lib/utils/css/css_2_text.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';

import 'core_funtion.dart';

/// 将CSS格式的标签转为文本
class BrnCSS2Text {
  const BrnCSS2Text._();

  static TextSpan toTextSpan(String htmlContent,
      {HyperLinkCallback? linksCallback,
      TextStyle? defaultStyle,
      Color? linkColor}) {
    return TextSpan(
      children: Convert(
        htmlContent,
        linkCallBack: linksCallback,
        defaultStyle: defaultStyle,
      ).convert(linkColor),
    );
  }

  static Text toTextView(
    String htmlContent, {
    HyperLinkCallback? linksCallback,
    TextStyle? defaultStyle,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? textOverflow,
  }) {
    return Text.rich(
      toTextSpan(
        htmlContent,
        linksCallback: linksCallback,
        defaultStyle: defaultStyle,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: textOverflow ?? TextOverflow.clip,
    );
  }
}
