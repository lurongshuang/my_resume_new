import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/other_data.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:url_launcher/url_launcher.dart';

// @description 作用:其他页面
// @date: 2021/12/9
// @author: 卢融霜

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      title: otherTitle,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Ink(
                  color: themeColor.secondLevelMainBgColor,
                  child: InkWell(
                    onTap: () {
                      _launchURL(dowUrl);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(12.r),
                      child: Text(wordDow,
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: themeColor.titleBlackColor)),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 0.4.r,
              color: themeColor.unselectedWidgetColor,
            )
          ],
        ),
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Fluttertoast.showToast(msg: "未能打开：$url");
    }
  }
}
