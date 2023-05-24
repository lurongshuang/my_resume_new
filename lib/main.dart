import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:my_resume/routes/home/home.dart';
import 'package:my_resume/theme/current_theme.dart';
import 'package:my_resume/theme/theme_data.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';
import 'localization/currentLocale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CurrentLocale()),
      ChangeNotifierProvider(create: (context) => CurrentTheme())
      //此是语言状态注册
    ],
    child: MyApp(),
  ));
  //加载字体
  loadFont();
  loadMaterialFont();
}

//加载 图标
void loadMaterialFont() async {
  var fontLoader = FontLoader("MaterialIcons");
  fontLoader.addFont(fetchFont(
      "http://baichao.jdysoft.cn/lrs_files/MaterialIcons-Regular.otf",
      "assets/fonts/MaterialIcons-Regular.otf"));
  await fontLoader.load();
}

//加载自定义字体
void loadFont() async {
  var fontLoader = FontLoader("hk");
  fontLoader.addFont(fetchFont('http://baichao.jdysoft.cn/lrs_files/hkktW5.TTC',
      "assets/fonts/hkktW5.TTC"));
  await fontLoader.load();
}

Future<ByteData> fetchFont(String urls, String assetsUrl) async {
  if (kIsWeb) {
    var url = Uri.parse(urls);
    final response = await get(url);
    if (response.statusCode == 200) {
      return ByteData.view(response.bodyBytes.buffer);
    } else {
      throw Exception('Failed to load font');
    }
  } else {
    var bytes = await rootBundle.load(assetsUrl);
    return bytes;
  }
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class MyApp extends StatelessWidget {
  //jdk jre  jvm
  //jdk 是java程序开发包，是提供给开发者使用的，他包含完整的java运行时环境（jre）
  //jvm 是java虚拟机，他是将字节码转换成特定的机器吧，jvm里面包含，内存管理，垃圾回收，安全等机制，java代码编写一次，多处运行
  //jre 是java 运行时环境，他是jvm java虚拟的 运行时所依赖的包环境。

  //成员变量，与局部变量
  //成员变量，属于某一个类中， 局部变量属于某一个方法中，成员变量可以被 public private static final 等关键字修饰，
  //局部变量不能被访问控制关键字以及 static修饰， 可以被final关键字修饰
  //从内存中存储方式来说
  //如果成员变量被 static修饰，那他就是属于这个类中的，反之是属于 实例对象的，对象存在堆内存中，局部变量存在栈内存中
  //从变量在内存生存时间来说
  //成员变量是实例的一部分，他随着对象的创建而存在，内局部变量随着方法的调用而自动消失，
  //成员变量如果没有被初始赋值，则会自动赋类型默认值，而局部变量不会自动赋值。

  //java内存分配情况   堆区，栈区 方法区

  //堆区 jvm只有一个堆区，所有线程共享，堆区不存放基本数据了下的对象引用，只存放对象本身，堆区存放的全部是对象， 每个对象都包含与之对应的class信息，
  //栈区 每一个线程中都有一个栈区，栈区存放基础数据类型的对象和自定义对象的引用，每个栈区的数据都是私有的，不与其他栈区共享。
  //栈区分为三个部分，基本类型变量区，执行环境上下文，操作指令区
  //方法区  也可以叫静态区，所有线程共享，方法区包含所有的 class和 static修饰的变量，方法区包含的都是 在程序中永远唯一的元素。

  //String 操作少量字符串数据（因为没次string数据改变的时候，都会重新new 对象，将地址引用指向新的String对象） 执行效率最低
  //StringBuilder  单线程在字符串缓冲区下操作大量数据 线程不安全 执行效率高
  //StringBuffer 多线程在字符串缓冲区下操作大量数据  线程安全 执行效率略低。

  // ==  和 equals（）
  // == 判断两个对象的地址是否相等， 基本数据类型 比较值是否相等，引用数据类型比较内存地址
  // equale 比较两个对象是否相等， 区分 是否重新了 qeuale方法，没有重写，等同 == 重写了 比如String，比较的是两个值是否相等。

  //tcp协议面向连接 传输可靠  面向字节流 速度慢

  //三次握手 客户端请求服务器（syn_sent），  服务端接收到请求，返回消息(syn_recv)，  客户端携带消息请求服务端(双方syn_ESTABLISHED)。
  // SYN 同步序列编号
  // 四次挥手 客户端请求关闭，服务器做出相应，服务器告诉客户端可以关闭，客户端请求服务器关闭

  // upd 无连接，传输不可靠 无需，面向报文  速度快

  //initState      initState
  // didChangeDependencies  didChangeDependencies
  //deactivate  deactivate deaactivate
  //dispose dispose dispose
  //didUpdateWidget didUpdateWidget  didUpdateWidget

  // initState didChangeDependencies  didUpateWidget  deactivate  dispose

  //您好，我是xxx，从事应用开发约5年的时间，熟悉使用 java dart flutter vue  开发应用程序，
  // 曾任职2于家公司，目前在职这家公司叫做，北京宏宇睿晨信息技术有限公司，公司主要从事水利工程行业，造价行业的系统软件开发，
  // 主要的甲方有，中国水利工程协会和下属协会，中国建设工程造价管理协会等、
  //我在公司担任手机方面的软件开发与管理，包括应用程序，手机网页等。
  //我的优势是不局限于原生开发，会一些前端知识，懂后台开发流程，也一直在充实自己的技能，
  //性格方面，在团队里，我是属于比较活泼的，可以带动气氛的存在。
  //最后，我未来期望 我在公司不仅仅只是每天干代码，人来人往的状态，过个几年我离职也就离职了，我希望公司可以给机会，让我与公司一起去成长吧。

  late Color _themeColor;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (BuildContext context, Widget? child) =>
            Consumer<CurrentLocale>(builder: (context, currentLocale, child) {
              return Consumer<CurrentTheme>(
                  builder: (context, themeColor, child) {
                if (themeMap[themeColor.getThisThemeColor] != null) {
                  _themeColor =
                      themeMap[themeColor.getThisThemeColor]!.primaryColor;
                }
                Future.delayed(Duration(milliseconds: 100), () {
                  SystemUiOverlayStyle systemUiOverlayStyle =
                      SystemUiOverlayStyle(
                    systemNavigationBarColor:
                        themeMap[themeColor.getThisThemeColor]!
                            .systemNavigationBarColor, //虚拟按键背景色
                  );
                  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
                });

                return MaterialApp(
                  navigatorKey: navigatorKey,
                  title: '卢融霜简历',
                  theme: ThemeData(
                      fontFamily: "hk",
                      primaryColor: _themeColor,
                      floatingActionButtonTheme: FloatingActionButtonThemeData(
                          backgroundColor: _themeColor),
                      bottomAppBarColor: _themeColor),
                  // home: Splash()),
                  home: Home(),
                  builder: (context, widget) {
                    return MediaQuery(
                      //设置文字大小不随系统设置改变
                      data:
                          MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                      child: widget ?? const SizedBox(),
                    );
                  },
                  localizationsDelegates: const [
                    S.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate
                  ],
                  supportedLocales: S.delegate.supportedLocales,
                  locale: currentLocale.value,
                  localeListResolutionCallback: (locales, supportedLocales) {
                    return;
                  },
                );
              });
            }));
  }
}
