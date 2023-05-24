import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/base/base_routes_widget.dart';
import 'package:my_resume/data/education_data.dart';
import 'package:my_resume/generated/l10n.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:my_resume/widget/lazy_load_image_widget.dart';

// @description 作用:教育经历
// @date: 2021/12/1
// @author: 卢融霜

class EducationList extends StatefulWidget {
  const EducationList({Key? key}) : super(key: key);

  @override
  _EducationListState createState() => _EducationListState();
}

class _EducationListState extends State<EducationList> {
  @override
  Widget build(BuildContext context) {
    return BaseRoutesWidget(
      title: S.of(context)!.educationInfo,
      child: ListView.builder(
          itemCount: educationList.length,
          itemBuilder: (context, index) {
            return EduCationItemWidget(educationList[index]);
          }),
    );
  }
}

class EduCationItemWidget extends StatelessWidget {
  EducationBean eduBean;

  EduCationItemWidget(this.eduBean, {key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
          color: themeColor.secondLevelMainBgColor,
          border: Border(
              bottom:
                  BorderSide(width: 5.r, color: themeColor.underlineColor))),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.r),
                width: 70.r,
                height: 70.r,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.r)),
                    border: Border.all(
                        color: themeColor.underlineColor, width: 1.r)),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  child: LazyLoadImageWidget(
                    eduBean.img,
                    width: 70.r,
                    height: 70.r,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.r),
                    child: Text(
                      eduBean.title,
                      style: TextStyle(
                          color: themeColor.titleBlackColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.r),
                    child: Text(
                      "${eduBean.levelName} | ${eduBean.majorName}",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: themeColor.secondLevelTitleColor),
                    ),
                  ),
                  Text(
                    "${eduBean.bTime} -- ${eduBean.eTime}",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: themeColor.secondLevelTitleColor),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
