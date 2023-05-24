import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/project_data.dart';
import 'package:my_resume/data/work_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/routes/projectList/project_del.dart';
import 'package:my_resume/theme/current_theme.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';
import 'package:provider/provider.dart';

// @description 作用:
// @date: 2021/11/29
// @author: 卢融霜

class ProjectList extends StatefulWidget {
  const ProjectList({Key? key}) : super(key: key);

  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
        title: S.of(context)?.projectInfo ?? "",
        child: CustomScrollView(
          slivers: [for (ComPro comPro in comInfoList) sliverItem(comPro)],
        ));
  }

  Widget sliverItem(ComPro comPro) {
    int i = comInfoList.indexOf(comPro);
    return SliverStickyHeader(
      header: Container(
        color: themeColor.underlineColor,
        padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 5.r),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 5.r),
              padding:
                  EdgeInsets.only(top: 3.r, bottom: 3.r, left: 5.r, right: 5.r),
              decoration: BoxDecoration(
                  color: themeColor.secondLevelMainBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  border: Border.all(
                      color: themeColor.underlineColor, width: 0.5.r)),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.r)),
                child: Image.asset(
                  comInfoList[i].iconUrl,
                  width: 80.r,
                  height: 20.r,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Text(
              comInfoList[i].title,
              style:
                  TextStyle(color: themeColor.titleBlackColor, fontSize: 12.sp),
            )
          ],
        ),
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) =>
                          ProjectDel(comInfoList[i].infoList[index])));
            },
            child: ProjectWidget(comInfoList[i].infoList[index]),
          ),
          childCount: comInfoList[i].infoList.length,
        ),
      ),
    );
  }
}

class ProjectWidget extends StatefulWidget {
  ProjectBean projectInfo;

  ProjectWidget(this.projectInfo, {Key? key}) : super(key: key);

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: themeColor.secondLevelMainBgColor,
          border: Border(
              bottom:
                  BorderSide(color: themeColor.underlineColor, width: 0.4.r))),
      padding: EdgeInsets.symmetric(horizontal: 15.r, vertical: 20.r),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                  tag: widget.projectInfo.title,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.r)),
                        border: Border.all(
                            width: 0.4.r, color: themeColor.underlineColor)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      child: LazyLoadImageWidget(
                        widget.projectInfo.iconUrl,
                        width: 55.r,
                        height: 55.r,
                      ),
                    ),
                  )),
              Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.only(left: 8.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.projectInfo.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: themeColor.titleBlackColor,
                                fontSize: 15.sp)),
                        Padding(
                          padding: EdgeInsets.only(top: 3.r),
                          child: Text(widget.projectInfo.content,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: themeColor.secondLevelTitleColor,
                                  fontSize: 12.sp)),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 3,
                  child: Container(
                    height: 55.r,
                    alignment: Alignment.center,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.r, vertical: 5.r),
                      decoration: BoxDecoration(
                          color: themeColor.underlineColor,
                          borderRadius: BorderRadius.all(Radius.circular(5.r))),
                      child: Text(
                        "获取",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Provider.of<CurrentTheme>(context)
                                        .getThisThemeColor ==
                                    AppThemeEnum.blackTheme
                                ? themeColor.titleBlackColor
                                : themeColor.primaryColor),
                      ),
                    ),
                  ))
            ],
          ),
          widget.projectInfo.screenList.isNotEmpty
              ? Container(
                  padding: EdgeInsets.only(top: 10.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (String url in widget.projectInfo.screenList
                          .map((e) => e.imgUrl)
                          .toList()
                          .getRange(0, 3))
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r)),
                              border: Border.all(
                                  width: 0.4.r,
                                  color: const Color(0xffd6d6d6))),
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                            child: LazyLoadImageWidget(
                              url,
                              width: 90.r,
                              height: 150.r,
                            ),
                          ),
                        )
                    ],
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
