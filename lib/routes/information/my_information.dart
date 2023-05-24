import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/information_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';
import 'package:my_resume/widget/show_image_widget.dart';
import 'package:my_resume/widget/tag_view.dart';

/// Created by 卢融霜
/// on
/// Description：基本信息
class MyInformation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyInformation();
  }
}

class _MyInformation extends State<MyInformation> {
  late ScrollController _controller;
  double headMaxWidth = 120;
  double headMinWidth = 50;
  double headWidth = 120.r;

  @override
  void initState() {
    _controller = ScrollController()
      ..addListener(() {
        headWidth = headMaxWidth - _controller.offset.abs();
        if (headWidth < headMinWidth) {
          headWidth = headMinWidth;
          return;
        }
        if (headWidth < 0) {
          headWidth = headMinWidth;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      title: S.of(context)!.basicInfo,
      child: Container(
        color: themeColor.underlineColor,
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          controller: _controller,
          children: [
            Container(color: themeColor.underlineColor, height: 40.r),
            Container(
              width: double.infinity,
              height: 120.r,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                      width: MediaQuery.of(context).size.width,
                      height: 50.r,
                      bottom: 0.r,
                      child: Container(
                        decoration: BoxDecoration(
                            color: themeColor.mainBgColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(120.r),
                                topRight: Radius.circular(120.r))),
                        width: double.infinity,
                        height: 50.r,
                      )),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    width: headWidth,
                    height: headWidth,
                    decoration: BoxDecoration(
                      color: themeColor.underlineColor,
                      border: Border.all(
                          color: themeColor.underlineColor, width: 0.4.r),
                      borderRadius: BorderRadius.all(Radius.circular(80.r)),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (content) {
                          return ShowImageWidget(
                              currentIndex: 0, images: [myHeadUrl]);
                        }));
                      },
                      child: Hero(
                          tag: "tag0",
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(80.r)),
                            child: LazyLoadImageWidget(
                              myHeadUrl,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            for (int i = 0; i < userTagList.length; i++)
              ItemWidget(userTagList[i].title, userTagList[i].context,
                  (i == 6 || i == userTagList.length - 1)),
            ItemAutoWidget(
                S.of(context)?.tagList ?? "",
                TagView(
                    width: double.infinity,
                    tags: tagList,
                    itemStyle: TextStyle(
                        color: themeColor.titleBlackColor, fontSize: 12.sp),
                    radius: 5,
                    tagHeight: 30)),
            Container(color: themeColor.underlineColor, height: 10.r),
          ],
        ),
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  String title;
  String text;
  bool showBottom;

  ItemWidget(this.title, this.text, this.showBottom, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: themeColor.mainBgColor,
          border: Border(
              bottom: BorderSide(
                  color: themeColor.underlineColor,
                  width: showBottom ? 10.r : 0))),
      padding: EdgeInsets.only(left: 15.r, right: 15.r, top: 15.r),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 100.r,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 14.sp, color: themeColor.secondLevelTitleColor),
                ),
              ),
              Expanded(
                  child: Text(
                text,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15.sp, color: themeColor.titleBlackColor),
              )),
            ],
          ),
          Container(
            height: showBottom ? 0 : 0.4.r,
            margin: EdgeInsets.only(top: 15.r),
            color: themeColor.underlineColor,
          )
        ],
      ),
    );
  }
}

class ItemAutoWidget extends StatelessWidget {
  String title;
  Widget auto;

  ItemAutoWidget(this.title, this.auto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.r, right: 15.r, top: 15.r),
      color: themeColor.mainBgColor,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 15.sp, color: themeColor.titleBlackColor),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.r),
                child: auto,
              ),
            ],
          ),
          Container(
            height: 0.4.r,
            margin: EdgeInsets.only(top: 15.r),
            color: themeColor.underlineColor,
          )
        ],
      ),
    );
  }
}
