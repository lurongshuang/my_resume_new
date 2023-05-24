import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/project_data.dart';
import 'package:my_resume/routes/screenshot/screenshoot_list.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';
import 'package:my_resume/widget/show_image_widget.dart';
import 'package:url_launcher/url_launcher.dart';

// @description 作用:项目详情
// @date: 2021/11/29
// @author: 卢融霜

class ProjectDel extends StatefulWidget {
  ProjectBean projectInfo;

  ProjectDel(this.projectInfo, {Key? key}) : super(key: key);

  @override
  _ProjectDelState createState() => _ProjectDelState();
}

class _ProjectDelState extends State<ProjectDel> {
  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
        title: widget.projectInfo.title,
        child: Ink(
          color: themeColor.secondLevelMainBgColor,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                          tag: widget.projectInfo.title,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.r)),
                                border: Border.all(
                                    width: 0.4.r,
                                    color: themeColor.underlineColor)),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r)),
                              child: LazyLoadImageWidget(
                                widget.projectInfo.iconUrl,
                                width: 85.r,
                                height: 85.r,
                              ),
                            ),
                          )),
                      Expanded(
                          child: Container(
                        height: 85.r,
                        padding: EdgeInsets.only(left: 8.r),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.projectInfo.title,
                                style: TextStyle(
                                    color: themeColor.titleBlackColor,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold)),
                            Padding(
                              padding: EdgeInsets.only(top: 5.r),
                              child: Text(widget.projectInfo.content,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: themeColor.secondLevelTitleColor,
                                      fontSize: 12.sp)),
                            ),
                            Expanded(
                                child: widget.projectInfo.appStores.isNotEmpty
                                    ? Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          for (AppStores appstore
                                              in widget.projectInfo.appStores)
                                            AppStoreWidget(appstore)
                                        ],
                                      )
                                    : Padding(
                                        padding: EdgeInsets.only(top: 10.r),
                                        child: Text(
                                          "内部系统,无法访问。",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.red),
                                        )))
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
                widget.projectInfo.screenList.length>0? Container(
                  margin:
                      EdgeInsets.only(bottom: 10.r, left: 15.r, right: 15.r),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(
                        "项目截图",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp,
                            color: themeColor.titleBlackColor),
                      )),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      ScreenshootList(widget.projectInfo)));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.r),
                          child: Row(
                            children: [
                              Text("展开",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: themeColor.secondLevelTitleColor)),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  size: 10.r, color: themeColor.secondLevelTitleColor)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ):Container(),
                widget.projectInfo.screenList.length>0?  SizedBox(
                  height: 220.r,
                  child: ListView.builder(
                      itemCount: widget.projectInfo.screenList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            openImages(index);
                          },
                          child: Hero(
                              tag: "tag$index",
                              child: ScreenView(
                                  widget.projectInfo.screenList[index].imgUrl)),
                        );
                      }),
                ):SizedBox(),
                Container(
                  margin: EdgeInsets.only(
                      top: 20.r, bottom: 10.r, left: 15.r, right: 15.r),
                  child: Text(
                    "关于应用",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: themeColor.titleBlackColor),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 20.r, left: 15.r, right: 15.r),
                  child: Text(
                    widget.projectInfo.aboutApp,
                    style: TextStyle(
                        height: 1.5.r,
                        fontSize: 14.sp,
                        color:  themeColor.titleBlackColor),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15.r, right: 15.r),
                  child: Text(
                    "关于开发",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                        color: themeColor.titleBlackColor),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: 10.r, left: 15.r, right: 15.r),
                  child: ListView.builder(
                      itemCount: widget.projectInfo.devList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(right: 15.r, top: 10.r),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.projectInfo.devList[index].title,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: themeColor.secondLevelTitleColor,
                                    height: 1.5.r),
                              ),
                              Expanded(
                                  child: Text(
                                widget.projectInfo.devList[index].content,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: themeColor.titleBlackColor,
                                    height: 1.5.r),
                              ))
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ));
  }

  void openImages(int index) {
    List<String> images = [];
    images = widget.projectInfo.screenList.map((e) => e.imgUrl).toList();
    Navigator.push(context, MaterialPageRoute(builder: (content) {
      return ShowImageWidget(currentIndex: index, images: images);
    }));
  }
}

class ScreenView extends StatelessWidget {
  String url;

  ScreenView(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.r),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
          border: Border.all(width: 0.4.r, color: const Color(0xffd6d6d6))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.r)),
        child: LazyLoadImageWidget(
          url,
          width: 110.r,
          height: 220.r,
        ),
      ),
    );
  }
}

class AppStoreWidget extends StatelessWidget {
  AppStores appStores;

  AppStoreWidget(this.appStores, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      color: themeColor.secondLevelMainBgColor,
      child: Container(
        margin: EdgeInsets.only(right: 10.r),
        padding: EdgeInsets.all(2.r),
        decoration: BoxDecoration(
            border: Border.all(width: 0.4.r, color: themeColor.underlineColor),
            borderRadius: BorderRadius.all(Radius.circular(5.r))),
        child: InkWell(
          onTap: () {
            _launchURL(appStores.dowUrl);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
            child: Image.asset(
              appStores.iconUrl,
              width: 20.r,
              height: 20.r,
              fit: BoxFit.cover,
            ),
          ),
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
