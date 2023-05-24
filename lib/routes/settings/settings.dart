import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/settings_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/localization/currentLocale.dart';
import 'package:my_resume/theme/current_theme.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:provider/provider.dart';

// @description 作用:设置
// @date: 2021/12/6
// @author: 卢融霜

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int index = 1;
  int themeIndex = 1;

  @override
  void initState() {
    String loaName = Intl.getCurrentLocale();
    if (loaName == "zh_CN") {
      index = 1;
    } else {
      index = 2;
    }
    if (Provider.of<CurrentTheme>(context, listen: false).getThisThemeColor ==
        AppThemeEnum.defaultTheme) {
      themeIndex = 1;
    } else {
      themeIndex = 2;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      title: S.of(context)?.setting_text ?? "",
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: themeColor.secondLevelMainBgColor),
            padding: EdgeInsets.symmetric(horizontal: 12.r),
            child: Row(
              children: [
                Expanded(
                    child: Text(language,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: themeColor.titleBlackColor))),
                Row(
                  children: [
                    Text(chinese,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: themeColor.titleBlackColor)),
                    Theme(
                        data: ThemeData(
                            unselectedWidgetColor:
                                themeColor.unselectedWidgetColor),
                        child: Radio(
                            value: 1,
                            groupValue: index,
                            activeColor: themeColor.activeColor,
                            onChanged: (value) {
                              setState(() {
                                index = value ?? 0;
                                S.load(Locale("zh", "CN"));
                                Provider.of<CurrentLocale>(context,
                                        listen: false)
                                    .setLocale(const Locale('zh', "CH"));
                              });
                            })),
                    Text(english,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: themeColor.titleBlackColor)),
                    Theme(
                        data: ThemeData(
                            unselectedWidgetColor:
                                themeColor.unselectedWidgetColor),
                        child: Radio(
                            value: 2,
                            groupValue: index,
                            activeColor: themeColor.activeColor,
                            onChanged: (value) {
                              setState(() {
                                index = value ?? 0;
                                S.load(Locale("en", "US"));
                                Provider.of<CurrentLocale>(context,
                                        listen: false)
                                    .setLocale(const Locale('en', "US"));
                              });
                            }))
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 0.4.r,
            color: themeColor.unselectedWidgetColor,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.r),
            decoration: BoxDecoration(color: themeColor.secondLevelMainBgColor),
            child: Row(
              children: [
                Expanded(
                    child: Text(appTheme,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: themeColor.titleBlackColor))),
                Row(
                  children: [
                    Text(themeDefault,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: themeColor.titleBlackColor)),
                    Theme(
                        data: ThemeData(
                            unselectedWidgetColor:
                                themeColor.unselectedWidgetColor),
                        child: Radio(
                            value: 1,
                            groupValue: themeIndex,
                            activeColor: themeColor.activeColor,
                            onChanged: (value) {
                              setState(() {
                                themeIndex = value ?? 0;
                                Provider.of<CurrentTheme>(context,
                                        listen: false)
                                    .setTheme(AppThemeEnum.defaultTheme);
                              });
                            })),
                    Text(themeDark,
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: themeColor.titleBlackColor)),
                    Theme(
                        data: ThemeData(
                            unselectedWidgetColor:
                                themeColor.unselectedWidgetColor),
                        child: Radio(
                            value: 2,
                            activeColor: themeColor.activeColor,
                            groupValue: themeIndex,
                            onChanged: (value) {
                              setState(() {
                                themeIndex = value ?? 0;
                                Provider.of<CurrentTheme>(context,
                                        listen: false)
                                    .setTheme(AppThemeEnum.blackTheme);
                              });
                            }))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
