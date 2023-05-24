import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/work_data.dart';
import 'package:my_resume/theme/current_theme.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/expandable_count_text.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

// @description 作用:公司介绍
// @date: 2021/11/29
// @author: 卢融霜

class WorkDel extends StatefulWidget {
  WorkDelBean workDelBean;

  WorkDel(this.workDelBean, {Key? key}) : super(key: key);

  @override
  _CompanyDelState createState() => _CompanyDelState();
}

class _CompanyDelState extends State<WorkDel> {
  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
        title: widget.workDelBean.comAbbName,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("${widget.workDelBean.bgImg}"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              BackdropFilter(
                  blendMode: BlendMode.srcOver,
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    color: Colors.white.withOpacity(0.1),
                  )),
              SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(
                          102,
                          102,
                          102,
                          (Provider.of<CurrentTheme>(context)
                                      .getThisThemeColor ==
                                  AppThemeEnum.blackTheme
                              ? 0.8
                              : 0.4))),
                  padding: EdgeInsets.only(top: 10.r, left: 15.r, bottom: 15.r),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                          padding: EdgeInsets.only(right: 15.r),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Hero(
                                      tag: widget.workDelBean.comAbbName,
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          widget.workDelBean.comAbbName,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.sp),
                                        ),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.r),
                                    child: Text(
                                      "${widget.workDelBean.typeString1} · ${widget.workDelBean.typeString2} · ${widget.workDelBean.typeString3}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.sp),
                                    ),
                                  )
                                ],
                              )),
                              Hero(
                                  tag: widget.workDelBean.comImgUrl,
                                  child: Material(
                                    color: Colors.transparent,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r)),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r)),
                                        child: Image.asset(
                                          widget.workDelBean.comImgUrl,
                                          width: 55.r,
                                          height: 55.r,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          )),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 15.r, top: 20.r),
                        child: Text(widget.workDelBean.workDuty,
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.sp)),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 15.r, top: 20.r),
                        child: Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 15.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.r, right: 15.r),
                              child: Text(
                                widget.workDelBean.workDate,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
                              ),
                            ),
                            Icon(
                              Icons.weekend_outlined,
                              color: Colors.white,
                              size: 15.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.r, right: 15.r),
                              child: Text(
                                widget.workDelBean.restDate,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
                              ),
                            ),
                            Icon(
                              Icons.work_outline_rounded,
                              color: Colors.white,
                              size: 15.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.r, right: 15.r),
                              child: Text(
                                widget.workDelBean.workStr,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.sp),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 20.r),
                        height: 50.r,
                        child: ListView.builder(
                            itemCount: widget.workDelBean.treatList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                alignment: Alignment.center,
                                width: 100.r,
                                margin: EdgeInsets.only(right: 10.r),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0.4.r),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      widget.workDelBean.treatList[index]
                                          .iconData,
                                      color: Colors.white,
                                      size: 25.sp,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.r),
                                      child: Text(
                                        widget
                                            .workDelBean.treatList[index].title,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 15.r, top: 20.r),
                        child: Text(
                          "公司地址",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 15.r, top: 10.r),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              widget.workDelBean.comAddress,
                              maxLines: 2,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                height: 1.5.r,
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            )),
                            InkWell(
                              onTap: () {
                                openMap();
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 5.r),
                                padding: EdgeInsets.all(5.r),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white, width: 0.4.r),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5.r))),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.map_outlined,
                                      size: 15.r,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "导航",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.sp),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 15.r, top: 20.r),
                        child: Text(
                          "公司介绍",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(right: 15.r, top: 20.r),
                          child: ExpandableCountText(
                            maxLines: 150,
                            text: widget.workDelBean.comIntroduce,
                            textStyle: TextStyle(
                                fontSize: 14.sp,
                                height: 1.5.r,
                                color: Colors.white),
                          )),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 15.r, top: 20.r),
                        child: Text(
                          "工商信息",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListView.builder(
                          itemCount: widget.workDelBean.infoList.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(right: 15.r, top: 10.r),
                              child: Text(
                                widget.workDelBean.infoList[index],
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    height: 1.5.r),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  void openMap() async {
    String url =
        "http://api.map.baidu.com/geocoder?address=${widget.workDelBean.comAddress}&output=html&src=webapp.baidu.openAPIdemo";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      Fluttertoast.showToast(msg: "未能打开：$url");
    }
  }
}
