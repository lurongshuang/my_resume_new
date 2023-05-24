import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/home_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/routes/education/education_list.dart';
import 'package:my_resume/routes/home/widget/card_item.dart';
import 'package:my_resume/routes/home/widget/home_title_widget.dart';
import 'package:my_resume/routes/information/my_information.dart';
import 'package:my_resume/routes/other/other.dart';
import 'package:my_resume/routes/projectList/project_list.dart';
import 'package:my_resume/routes/settings/settings.dart';
import 'package:my_resume/routes/skill/my_skill.dart';
import 'package:my_resume/routes/work/work_list.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

/// Created by 卢融霜
/// on
/// Description：首页
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  void initState() {
    S.load(const Locale('zh', 'CN'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      showAppBar: false,
      title: '卢融霜',
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 10.r,
                left: 15.r,
                right: 15.r),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/psketch.png"))),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => Settings()));
                      },
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 24.r,
                      ),
                    )
                  ],
                ),
                HomeTitleWidget()
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              decoration: BoxDecoration(
                  color: themeColor.mainBgColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
              bottom: 0,
              height: MediaQuery.of(context).size.height / 2 + 40.r,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CardItem(
                            basicInfo, "044-chronometer.png", MyInformation()),
                        CardItem(skillInfo, "024-idea-1.png", MySkill())
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.r),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardItem(workInfo, "038-cloud-3.png", WorkList()),
                          CardItem(educationInfo, "026-programming-2.png",
                              EducationList())
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.r),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardItem(
                              projectInfo, "008-download.png", ProjectList()),
                          CardItem(otherInfo, "023-idea-2.png", Other())
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Positioned(
              bottom: 5.r,
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _launchURL(icpUrl);
                      },
                      child: Text(
                        icpName,
                        style: TextStyle(
                            fontSize: 10.sp, color: themeColor.titleBlackColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.r),
                      child: LazyLoadImageWidget(
                        beiAnIcon,
                        width: 10.r,
                        height: 10.r,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _launchURL(beiAnUrl);
                      },
                      child: Text(
                        beiAnName,
                        style: TextStyle(
                            fontSize: 10.sp, color: themeColor.titleBlackColor),
                      ),
                    )
                  ],
                ),
              ))
        ],
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
