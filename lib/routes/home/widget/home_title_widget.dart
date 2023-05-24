import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_resume/data/home_data.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeTitleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeTitleState();
  }
}

class HomeTitleState extends State<HomeTitleWidget> {
  Artboard? _riveArtboard;
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    rootBundle.load("assets/riv/android.riv").then((value) async {
      final file = RiveFile.import(value);
      final artBoard = file.mainArtboard;
      artBoard.addController(_controller = SimpleAnimation('Balance'));
      _controller.onActivate();
      setState(() => _riveArtboard = artBoard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
                width: 80.r,
                height: 150.r,
                child: InkWell(
                  excludeFromSemantics: true,
                  onTap: () {
                    _riveArtboard
                        ?.addController(_controller = SimpleAnimation('Jump'));
                  },
                  child: Container(
                    child: _riveArtboard != null
                        ? Rive(
                            artboard: _riveArtboard!,
                            alignment: Alignment.center,
                            fit: BoxFit.contain,
                          )
                        : const Text(""),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 100.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.r),
                    child: InkWell(
                      onTap: () {
                        _riveArtboard?.addController(
                            _controller = SimpleAnimation('Start'));
                      },
                      child: Text(
                        myName ?? "",
                        style: TextStyle(
                            fontSize: 30.sp,
                            color: themeColor.titleLightColor,
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.r),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            _launchURL("tel:13718382321");
                          },
                          child: Image.asset(
                            "assets/images/home/ic_phone.png",
                            width: 35.r,
                            height: 35.r,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _launchURL(
                                "mailto:13718382321@163.com?subject=面试邀请");
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 15.r),
                              child: Image.asset(
                                "assets/images/home/ic_email.png",
                                width: 35.r,
                                height: 35.r,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            _launchURL(
                                "https://www.jianshu.com/u/f6461e926224");
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 15.r),
                              child: Image.asset(
                                "assets/images/home/ic_js.png",
                                width: 35.r,
                                height: 35.r,
                              )),
                        ),
                        InkWell(
                          onTap: () {
                            _launchURL("https://github.com/lurongshuang");
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 15.r),
                              child: Image.asset(
                                "assets/images/home/ic_github.png",
                                width: 35.r,
                                height: 35.r,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.r),
          child: Text(
            introduce ?? "",
            style: TextStyle(
                color: themeColor.titleLightColor,
                fontSize: 16.sp,
                height: 1.5.r),
          ),
        )
      ],
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
