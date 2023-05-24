import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main.dart';
import 'current_theme.dart';

//主题枚举
enum AppThemeEnum { defaultTheme, blackTheme }

//默认主题
ThemeBean defaultTheme = ThemeBean(
    //主题色
    Colors.blue,
    //主标题浅色
    Colors.white,
    //主标题深色
    Color(0xff333333),
    //主背景色
    Colors.white,
    //未选中颜色
    Colors.grey,
    //选中颜色
    Colors.blue,
    //下划线颜色
    Color(0xffe6e6e6),
    //底部导航栏颜色
    Color(0xfff2f2f2),
    //二级标题颜色
    Color(0xff666666),
    //二级背景色
    Color(0xffffffff));

//暗黑主题
ThemeBean blackTheme = ThemeBean(
    //主题色
    Color(0xff111111),
    //主标题浅色
    Colors.white,
    //主标题深色
    Colors.white,
    //主背景色
    Color(0xff111111),
    //未选中颜色
    Color(0xff2c2c2c),
    //选中颜色
    Color(0xff2c2c2c),
    //下划线颜色
    Color(0xff3b3b3b),
    //底部导航栏颜色
    Color(0xff010101),
    //二级标题颜色
    Color(0xff979797),
    //二级背景色
    Color(0xff424242));

//主题数组
Map<AppThemeEnum, ThemeBean> themeMap = {
  AppThemeEnum.defaultTheme: defaultTheme,
  AppThemeEnum.blackTheme: blackTheme
};

//获取颜色
ThemeBean get themeColor => themeMap[
    Provider.of<CurrentTheme>(navigatorKey.currentState!.overlay!.context)
        .getThisThemeColor]!;

//主题实体类
class ThemeBean {
  //主题色
  Color primaryColor;

  //title 浅标题颜色
  Color titleLightColor;

  //title 深颜色
  Color titleBlackColor;

  //主背景色
  Color mainBgColor;

  //二级背景色
  Color secondLevelMainBgColor;

  //未选中颜色
  Color unselectedWidgetColor;

  //选中颜色
  Color activeColor;

  //下划线颜色
  Color underlineColor;

  //底部导航栏颜色
  Color systemNavigationBarColor;

  Color secondLevelTitleColor;

  ThemeBean(
      this.primaryColor,
      this.titleLightColor,
      this.titleBlackColor,
      this.mainBgColor,
      this.unselectedWidgetColor,
      this.activeColor,
      this.underlineColor,
      this.systemNavigationBarColor,
      this.secondLevelTitleColor,
      this.secondLevelMainBgColor);
}
