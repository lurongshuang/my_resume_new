import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/routes/home/home.dart';

/// @description 作用:启动图页面
/// @date: 2021/8/21
/// @author:lrs
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  int number = 5;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {
        number -= 1;
      });
      if (number == 1) {
        closeTimer();
        intentMain();
      }
    });
  }

  @override
  void dispose() {
    closeTimer();
    super.dispose();
  }

  void closeTimer() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      bottom: 20.r,
                      top: MediaQuery.of(context).size.height / 5),
                  alignment: Alignment.center,
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/span_logo.jpeg',
                        height: MediaQuery.of(context).size.width / 3,
                        width: MediaQuery.of(context).size.width / 3,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  "叽歪代码",
                  style: TextStyle(
                      fontSize: 35.sp, color: Color.fromRGBO(51, 51, 51, 1)),
                )
                // Image.asset(
                //   'assets/images/splash_bg.png',
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   fit: BoxFit.cover,
                // ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40.r, 20.r, 0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 75.r,
                    height: 30.r,
                    // child: FlatButton(
                    //   onPressed: () {
                    //     closeTimer();
                    //     intentMain();
                    //   },
                    //   child: Text(
                    //     '跳过 $number',
                    //     style: TextStyle(fontSize: 12.sp),
                    //   ),
                    //   color: Colors.white30,
                    //   colorBrightness: Brightness.dark,
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(30.0.r)),
                    // ),
                  )),
            ),
            Positioned(
                bottom: 30.r,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "©2021 卢融霜",
                    style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void intentMain() {
    Navigator.pushAndRemoveUntil(
      context,
      CupertinoPageRoute(builder: (context) => Home()),
      (route) => false,
    );
  }
}
