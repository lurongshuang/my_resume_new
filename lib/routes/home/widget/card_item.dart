import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/theme/theme_data.dart';

class CardItem extends StatefulWidget {
  String title;
  String url;
  Widget intent;

  CardItem(this.title, this.url, this.intent);

  @override
  State<StatefulWidget> createState() {
    return _CardItem();
  }
}

class _CardItem extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2 - 35.r,
      height: MediaQuery.of(context).size.height / 2 / 3,
      child: InkWell(
        onTap: () {
          if (widget.intent != null) {
            Navigator.push(context,
                CupertinoPageRoute(builder: (content) => widget.intent));
          }
        },
        child: Card(
          color: themeColor.secondLevelMainBgColor,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(15.r)),),
          elevation: 10.r,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/home/${widget.url}",
                  width: 50.r,
                  height: 50.r,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.r),
                  child: Text(
                    widget.title ?? "",
                    style: TextStyle(fontSize: 20.sp,color: themeColor.titleBlackColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
