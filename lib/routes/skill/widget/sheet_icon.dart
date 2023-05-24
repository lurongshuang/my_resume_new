import 'package:flutter/material.dart';
import 'package:my_resume/theme/theme_data.dart';

// @description 作用: sheet_bottom 右侧按钮
// @date: 2021/11/26
// @author: 卢融霜

class SheetIcon extends StatelessWidget {
  final bool showList;
  final double fontSize;

  const SheetIcon({Key? key, required this.showList, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild: Icon(
          Icons.menu,
          color: themeColor.titleLightColor,
          size: fontSize,
        ),
        secondChild: Icon(
          Icons.close_outlined,
          color: themeColor.titleLightColor,
          size: fontSize,
        ),
        crossFadeState:
            showList ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: const Duration(milliseconds: 500));
  }
}
