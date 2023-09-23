import 'package:flutter/material.dart';

import 'core_funtion.dart';

/// 将CSS格式的标签转为文本
class BrnCSS2Text {
  const BrnCSS2Text._();

  static TextSpan toTextSpan(
    String htmlContent, {
    HyperLinkCallback? linksCallback,
    TextStyle? defaultStyle,
  }) {
    return TextSpan(
      children: Convert(
        htmlContent,
        linkCallBack: linksCallback,
        defaultStyle: defaultStyle,
      ).convert(),
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
