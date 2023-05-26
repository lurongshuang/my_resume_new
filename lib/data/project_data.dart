const String hostImgHead = "http://baichao.jdysoft.cn/lrs_files/project_img";
//我的简历
ProjectBean myResumePj = ProjectBean(
    "我的简历",
    "$hostImgHead/my_header/logo.jpeg",
    '展示我的简历',
    [],
    [AppStores("H5", "assets/images/ic_pgy.png", "https://www.pgyer.com/RpBxDR")],
    '   展示我的简历',
    [
      DevInfo("开发语言：", "Dart、flutter"),
      DevInfo("开发工具：", "AndroidStudio"),
      DevInfo("主流功能：", "暂无"),
      DevInfo("项目依赖：",
          "flutter_screenutil、rive、url_launcher、expandable_text、cached_network_image、photo_view、flutter_sticky_header、flutter_localizations、intl、provider")
    ]);

//赛格报价
ProjectBean sgbjPj = ProjectBean(
    "赛格报价",
    "$hostImgHead/sgbj/logo.jpg",
    '赛格报价-窗帘销售',
    [
      ScreenBean("$hostImgHead/sgbj/1.jpg", "app"),
      ScreenBean("$hostImgHead/sgbj/2.jpg", "app"),
      ScreenBean("$hostImgHead/sgbj/3.jpg", "app"),
      ScreenBean("$hostImgHead/sgbj/4.jpg", "app"),
      ScreenBean("$hostImgHead/sgbj/5.jpg", "app"),
      ScreenBean("$hostImgHead/sgbj/6.jpg", "app"),
      ScreenBean("$hostImgHead/sgbj/7.jpg", "app")
    ],
    [AppStores("H5", "assets/images/ic_h5.png", "http://offer.h5.jdysoft.cn")],
    '   销售人员与客户甄选不同房间窗帘的细节要求，根据细节计算窗帘价格，确认后提交至云星辰系统，形成报价单，客户确认购买意向，生成出货单。',
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "HBuilder"),
      DevInfo("主流功能：", "金蝶财务系统对接"),
      DevInfo("项目依赖：", "iView")
    ]);

//福芬
ProjectBean fFenPj = ProjectBean(
    "FUFEN福芬查询",
    "$hostImgHead/ff/5.jpg",
    'FUFEN福芬小程序，吊牌价查询',
    [
      ScreenBean("$hostImgHead/ff/1.jpg", "app"),
      ScreenBean("$hostImgHead/ff/2.jpg", "app"),
      ScreenBean("$hostImgHead/ff/3.png", "app"),
      ScreenBean("$hostImgHead/ff/4.png", "app"),
      ScreenBean("$hostImgHead/ff/5.jpg", "app")
    ],
    [AppStores("小程序", "assets/images/miniPro.png", "https://ceshi.jdysoft.cn")],
    '   用户或者销售人员根据微信小程序，进行扫描吊牌条形码，查询衣服的具体信息。',
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "HBuilder、微信开发者工具"),
      DevInfo("主流功能：", "微信扫码"),
      DevInfo("项目依赖：", "wx-api，uniapp")
    ]);

//百超目视化
ProjectBean bcPj = ProjectBean(
    "百超目视化",
    "$hostImgHead/bcmsh/logo.jpg",
    '百超目视化管理系统',
    [
      ScreenBean("$hostImgHead/bcmsh/1.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/2.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/3.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/4.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/5.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/6.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/7.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/8.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/9.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/10.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/11.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/12.jpg", "app"),
      ScreenBean("$hostImgHead/bcmsh/13.jpg", "app")
    ],
    [],
    '   百超目视化看板管理系统，机床、技工排产排程，在车间大屏、PC、手机展示查看机床工作进度、状态信息',
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "HBuilder"),
      DevInfo("主流功能：", "看板、dataV"),
      DevInfo("项目依赖：", "DataV、iView")
    ]);

//三峡e购员工商城
ProjectBean sxeGPj = ProjectBean(
    "三峡e购员工商城改版",
    "$hostImgHead/sx/logo.png",
    '三峡科技公司员工商城',
    [
      ScreenBean("$hostImgHead/sx/1.jpg", "app"),
      ScreenBean("$hostImgHead/sx/2.jpg", "app"),
      ScreenBean("$hostImgHead/sx/3.jpg", "app"),
      ScreenBean("$hostImgHead/sx/4.jpg", "app"),
      ScreenBean("$hostImgHead/sx/5.jpg", "app"),
      ScreenBean("$hostImgHead/sx/6.jpg", "app"),
      ScreenBean("$hostImgHead/sx/7.jpg", "app"),
      ScreenBean("$hostImgHead/sx/8.jpg", "app"),
      ScreenBean("$hostImgHead/sx/9.jpg", "app"),
      ScreenBean("$hostImgHead/sx/10.jpg", "app"),
      ScreenBean("$hostImgHead/sx/11.jpg", "app"),
      ScreenBean("$hostImgHead/sx/12.jpg", "app"),
      ScreenBean("$hostImgHead/sx/13.jpg", "app"),
      ScreenBean("$hostImgHead/sx/14.jpg", "app"),
      ScreenBean("$hostImgHead/sx/15.jpg", "app"),
      ScreenBean("$hostImgHead/sx/16.jpg", "app"),
      ScreenBean("$hostImgHead/sx/17.jpg", "app"),
      ScreenBean("$hostImgHead/sx/18.jpg", "app"),
      ScreenBean("$hostImgHead/sx/19.jpg", "app"),
      ScreenBean("$hostImgHead/sx/20.jpg", "app")
    ],
    [AppStores("H5", "assets/images/miniPro.png", "https://eshop.ctg.com.cn")],
    '   三峡科技公司员工商城，支持积分兑换，商品购买等。',
    [
      DevInfo("开发语言：", "微信开发者工具"),
      DevInfo("开发工具：", "HBuilder"),
      DevInfo("主流功能：", "微信支付、商城"),
      DevInfo("项目依赖：", "wx-api")
    ]);

//航空危险品防控
ProjectBean hkwxpPj = ProjectBean(
    "航空危险品防控",
    "$hostImgHead/hkwxpcx/icon512.png",
    '货邮品查询-用于科普航空安全，和危险品查询',
    [
      ScreenBean("$hostImgHead/hkwxpcx/1.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/2.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/3.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/4.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/5.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/6.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/7.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/8.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/9.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/10.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/11.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/12.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/13.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/14.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/15.png", "app"),
      ScreenBean("$hostImgHead/hkwxpcx/16.png", "app")
    ],
    [],
    '   新疆民航-航空危险品防控',
    [
      DevInfo("开发语言：", "MUI"),
      DevInfo("开发工具：", "HBuilder"),
      DevInfo("主流功能：", "混合开发"),
      DevInfo("项目依赖：", "HTML5+")
    ]);

//互动星
ProjectBean hdxPj = ProjectBean(
    "互动星",
    "$hostImgHead/hdx/logo.jpg",
    '企业培训项目的学习支持工具。让训前有预习，现场有互动，领导能参与，效果能评价，成果能落地，数据出报告。更有全程顾问服务保障。',
    [
      ScreenBean("$hostImgHead/hdx/1.png", "app"),
      ScreenBean("$hostImgHead/hdx/2.png", "app"),
      ScreenBean("$hostImgHead/hdx/3.png", "app"),
      ScreenBean("$hostImgHead/hdx/4.png", "app"),
      ScreenBean("$hostImgHead/hdx/5.png", "app"),
      ScreenBean("$hostImgHead/hdx/6.png", "app"),
      ScreenBean("$hostImgHead/hdx/7.png", "app"),
      ScreenBean("$hostImgHead/hdx/8.png", "app"),
      ScreenBean("$hostImgHead/hdx/9.png", "app"),
      ScreenBean("$hostImgHead/hdx/10.png", "app"),
      ScreenBean("$hostImgHead/hdx/11.png", "app"),
      ScreenBean("$hostImgHead/hdx/12.png", "app"),
      ScreenBean("$hostImgHead/hdx/13.png", "app"),
      ScreenBean("$hostImgHead/hdx/14.png", "app"),
      ScreenBean("$hostImgHead/hdx/15.png", "app"),
      ScreenBean("$hostImgHead/hdx/16.png", "app"),
      ScreenBean("$hostImgHead/hdx/17.png", "app"),
      ScreenBean("$hostImgHead/hdx/18.png", "app")
    ],
    [
      AppStores("H5", "assets/images/ic_links.png",
          "http://www.goldgov.com/page/interactionstar/interactionstar.html")
    ],
    '   提升培训项目的组织、教学、评价管理效率\n'
        '   引入权威远程辅导，提高培训成果质量\n'
        '   领导参与行为评价，推动成果转化落地\n',
    [
      DevInfo("开发语言：", "HTML"),
      DevInfo("开发工具：", "HBuilder"),
      DevInfo("主流功能：", "微信公众"),
      DevInfo("项目依赖：", "HTML")
    ]);

//面试星
ProjectBean msxPj = ProjectBean(
    "面试星",
    "$hostImgHead/msx/logo.png",
    '中国进出口银行-面向企业招聘、干部选拔的移动面试工具',
    [
      ScreenBean("$hostImgHead/msx/1.png", "app"),
      ScreenBean("$hostImgHead/msx/2.png", "app"),
      ScreenBean("$hostImgHead/msx/3.png", "app"),
      ScreenBean("$hostImgHead/msx/4.png", "app"),
      ScreenBean("$hostImgHead/msx/5.png", "app"),
      ScreenBean("$hostImgHead/msx/6.png", "app"),
      ScreenBean("$hostImgHead/msx/7.png", "app"),
      ScreenBean("$hostImgHead/msx/8.png", "app"),
      ScreenBean("$hostImgHead/msx/9.png", "app"),
      ScreenBean("$hostImgHead/msx/10.png", "app"),
      ScreenBean("$hostImgHead/msx/11.png", "app"),
      ScreenBean("$hostImgHead/msx/12.png", "app"),
      ScreenBean("$hostImgHead/msx/13.png", "app"),
      ScreenBean("$hostImgHead/msx/14.png", "app"),
      ScreenBean("$hostImgHead/msx/15.png", "app"),
      ScreenBean("$hostImgHead/msx/16.jpg", "app"),
      ScreenBean("$hostImgHead/msx/17.jpg", "app"),
      ScreenBean("$hostImgHead/msx/18.jpg", "app"),
      ScreenBean("$hostImgHead/msx/19.png", "app"),
      ScreenBean("$hostImgHead/msx/20.png", "app"),
      ScreenBean("$hostImgHead/msx/21.png", "app"),
      ScreenBean("$hostImgHead/msx/22.png", "app"),
      ScreenBean("$hostImgHead/msx/23.png", "app"),
      ScreenBean("$hostImgHead/msx/24.png", "app"),
      ScreenBean("$hostImgHead/msx/25.png", "app"),
      ScreenBean("$hostImgHead/msx/26.png", "app"),
      ScreenBean("$hostImgHead/msx/27.png", "app"),
      ScreenBean("$hostImgHead/msx/28.png", "app"),
      ScreenBean("$hostImgHead/msx/29.png", "app"),
      ScreenBean("$hostImgHead/msx/30.png", "app"),
      ScreenBean("$hostImgHead/msx/31.png", "app"),
      ScreenBean("$hostImgHead/msx/32.png", "app"),
      ScreenBean("$hostImgHead/msx/33.png", "app")
    ],
    [
      AppStores("H5", "assets/images/ic_links.png",
          "http://www.goldgov.com/page/interview-star/interview-star.html")
    ],
    '   面试一切工作信息化、流程化，以前需要提前三天做的面试准备工作\n'
        '   如今半天就搞定，为企业招聘面试、企业干部选拔面试和所有类似选秀打分的场景，提供与时俱进的用户体验和高效的服务\n'
        '   让HR工作省时省力，工作量再大也不出错，不挨骂\n',
    [
      DevInfo("开发语言：", "java"),
      DevInfo("开发工具：", "AndroidStudio、SVN"),
      DevInfo("主流功能：", "pad"),
      DevInfo("项目依赖：", "暂无信息")
    ]);

//党建信息化平台
ProjectBean djxxhPj = ProjectBean(
    "党建信息化平台",
    "$hostImgHead/dj/logo.png",
    '中国通用技术集团-智慧党建平台',
    [
      ScreenBean("$hostImgHead/dj/1.jpg", "app"),
      ScreenBean("$hostImgHead/dj/2.jpg", "app"),
      ScreenBean("$hostImgHead/dj/3.jpg", "app"),
      ScreenBean("$hostImgHead/dj/4.jpg", "app"),
      ScreenBean("$hostImgHead/dj/5.jpg", "app"),
      ScreenBean("$hostImgHead/dj/6.jpg", "app"),
      ScreenBean("$hostImgHead/dj/7.jpg", "app"),
      ScreenBean("$hostImgHead/dj/8.jpg", "app")
    ],
    [
      AppStores("H5", "assets/images/ic_links.png",
          "http://www.goldgov.com/page/partybuildcloud/partybuildcloud.html")
    ],
    '   党建信息化平台，服务于中国通用技术集团，为集团提供党建信息服务，推进党建信息化建设，打造智慧党建平台。',
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "AndroidStudio、HBuilder、SVN"),
      DevInfo("主流功能：", "混合开发"),
      DevInfo("项目依赖：", "暂无信息")
    ]);

//北京干教网
ProjectBean bjgjwPj = ProjectBean(
    "北京干部教育网",
    "$hostImgHead/gj/logo.png",
    '面向全市19万公务员，严格考核，年完成1500万学时，100门2000学时课程',
    [
      ScreenBean("$hostImgHead/gj/1.jpg", "app"),
      ScreenBean("$hostImgHead/gj/2.jpg", "app"),
      ScreenBean("$hostImgHead/gj/3.jpg", "app"),
      ScreenBean("$hostImgHead/gj/4.jpg", "app"),
      ScreenBean("$hostImgHead/gj/5.jpg", "app"),
      ScreenBean("$hostImgHead/gj/6.jpg", "app"),
      ScreenBean("$hostImgHead/gj/7.jpg", "app"),
      ScreenBean("$hostImgHead/gj/7.5.png", "app"),
      ScreenBean("$hostImgHead/gj/8.jpg", "app"),
      ScreenBean("$hostImgHead/gj/8.5.png", "app"),
      ScreenBean("$hostImgHead/gj/9.jpg", "app"),
      ScreenBean("$hostImgHead/gj/9.5.png", "app"),
      ScreenBean("$hostImgHead/gj/10.jpg", "app"),
      ScreenBean("$hostImgHead/gj/11.jpg", "app"),
      ScreenBean("$hostImgHead/gj/12.jpg", "app"),
      ScreenBean("$hostImgHead/gj/13.jpg", "app"),
      ScreenBean("$hostImgHead/gj/14.jpg", "app"),
      ScreenBean("$hostImgHead/gj/15.jpg", "app"),
      ScreenBean("$hostImgHead/gj/16.jpg", "app"),
      ScreenBean("$hostImgHead/gj/17.jpg", "app"),
      ScreenBean("$hostImgHead/gj/18.jpg", "app"),
      ScreenBean("$hostImgHead/gj/19.jpg", "app"),
      ScreenBean("$hostImgHead/gj/20.jpg", "app"),
      ScreenBean("$hostImgHead/gj/21.jpg", "app"),
      ScreenBean("$hostImgHead/gj/22.jpg", "app"),
      ScreenBean("$hostImgHead/gj/23.png", "app"),
      ScreenBean("$hostImgHead/gj/24.png", "app"),
      ScreenBean("$hostImgHead/gj/25.png", "app"),
      ScreenBean("$hostImgHead/gj/26.png", "app"),
      ScreenBean("$hostImgHead/gj/27.png", "app"),
      ScreenBean("$hostImgHead/gj/28.png", "app"),
      ScreenBean("$hostImgHead/gj/29.png", "app"),
    ],
    [
      AppStores("H5", "assets/images/ic_links.png",
          "http://bjce.bjdj.gov.cn/index_portal.jsp")
    ],
    '   北京市委组织部  北京干部教育网,面向全市19万公务员，严格考核，年完成1500万学时，100门2000学时课程',
    [
      DevInfo("开发语言：", "java"),
      DevInfo("开发工具：", "AndroidStudio、SVN"),
      DevInfo("主流功能：", "视频播放、阅读器、音频播放、混合开发"),
      DevInfo("项目依赖：", "暂无信息")
    ]);

//水利造价题集
ProjectBean slzjtjPj = ProjectBean(
    "水利工程造价题集",
    "$hostImgHead/hyrc_zjtj/logo.png",
    '水利工程专业题型，等你来练习',
    [
      ScreenBean("$hostImgHead/hyrc_zjtj/1.png", "app"),
      ScreenBean("$hostImgHead/hyrc_zjtj/2.png", "app"),
      ScreenBean("$hostImgHead/hyrc_zjtj/3.png", "app"),
      ScreenBean("$hostImgHead/hyrc_zjtj/4.png", "app"),
      ScreenBean("$hostImgHead/hyrc_zjtj/5.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_zjtj/6.jpeg", "app")
    ],
    [
      AppStores("华为应用市场", "assets/images/huawei.png",
          "https://appgallery.huawei.com/app/C100919451")
    ],
    '   基于《水利工程计价》、《水利工程施工技术与计量》及《水利工程造价案例分析》等课程内容，组织水利行业资深专家，开发了“水利工程造价题集”APP，包含单选、多选及各类案例分析等题型，每题配有标准答案、具体解题思路和分析，方便学员在短时间内快速学习掌握知识要点，提高水利造价从业人员学习效率。',
    [
      DevInfo("开发语言：", "java"),
      DevInfo("开发工具：", "AndroidStudio、SVN"),
      DevInfo("主流功能：", "支付宝支付、微信支付"),
      DevInfo("项目依赖：",
          "androidx、okhttp、refresh-layout-kernel、XUI、eventbus、butterknife、glide、gson")
    ]);

//水利职业培训
ProjectBean slzypxPj = ProjectBean(
    "水利职业培训",
    "$hostImgHead/hyrc_slpx/logo.png",
    '海川韵通',
    [
      ScreenBean("$hostImgHead/hyrc_slpx/1.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slpx/2.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slpx/3.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slpx/4.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slpx/5.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slpx/6.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slpx/7.jpeg", "app")
    ],
    [
      AppStores("H5", "assets/images/ic_h5.png",
          "http://www.hcyt.tech/Index/Download")
    ],
    "   致力于打造一个水利职业技术培训的平台，包括教材、习题、培训等多方面服务，向中国水利工程协会会员单位或个人会员在职业技能培训方面提供便利，或向有志于在水利职业技术方面提升的个人提供帮助，提高我国水利人才储备。",
    [
      DevInfo("开发语言：", "java、Kotlin"),
      DevInfo("开发工具：", "AndroidStudio、SVN、Git"),
      DevInfo("主流功能：", "支付宝支付、微信支付"),
      DevInfo("项目依赖：",
          "androidx、okhttp、refresh-layout-kernel、XUI、eventbus、butterknife、glide、gson、jpush、tbssdk、guolindev、alipaySdk、wechat-sdk")
    ]);

//快刷题
ProjectBean kstPj = ProjectBean(
    "快刷题",
    "$hostImgHead/hyrc_kst/logo.png",
    '一款在线练习的题库，分为免费题库和付费题库，可进行在线刷题、搜索答案等。',
    [
      ScreenBean("$hostImgHead/hyrc_kst/1.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/2.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/3.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/4.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/5.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/6.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/7.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/8.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/9.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_kst/10.jpeg", "app")
    ],
    [
      AppStores("华为应用市场", "assets/images/huawei.png",
          "https://appgallery.huawei.com/app/C103765423"),
      AppStores("应用宝", "assets/images/yyb.jpg",
          "https://a.app.qq.com/o/simple.jsp?pkgname=com.hyrc.lrs.topiclibraryapplication"),
      AppStores("苹果", "assets/images/appStore.png",
          "https://apps.apple.com/cn/app/id1560286005"),

      // AppStores("OPPO", "assets/images/oppo.png",
      //     "https://appgallery.huawei.com/app/C103765423")
    ],
    "   一款在线练习的题库，分为免费题库和付费题库。可进行在线刷题、搜索答案等，练习方式多样，支持多种模式、顺序练习、随机练习、题型练习、收藏题练习、付费题练习等",
    [
      DevInfo("开发语言：", "Android(java、Kotlin) IOS(Vue)"),
      DevInfo("开发工具：", "AndroidStudio、HBuilder、SVN、Git"),
      DevInfo("主流功能：",
          "苹果内购支付、支付宝支付、微信支付、百度定位、分享、极光推送-统计、bugly版本升级-错误收集、glide、gson、jpush、tbssdk、bugly、guolindev、alipaySdk、wechat-sdk"),
      DevInfo("安卓依赖：",
          "androidx、okhttp、refresh-layout-kernel、XUI、eventbus、butterknife"),
      DevInfo("苹果依赖：", "iView组件库、uniapp框架")
    ]);

//海天恒信官网
ProjectBean hthxdPj = ProjectBean(
    "海天恒信PC官网",
    "$hostImgHead/hyrc_hthx/logo.jpeg",
    '海纳百川恒久远，天容万物信无涯',
    [
      ScreenBean("$hostImgHead/hyrc_hthx/1.jpeg", "pc"),
      ScreenBean("$hostImgHead/hyrc_hthx/2.jpeg", "pc"),
      ScreenBean("$hostImgHead/hyrc_hthx/3.jpeg", "pc"),
      ScreenBean("$hostImgHead/hyrc_hthx/4.jpeg", "pc")
    ],
    [
      AppStores("H5", "assets/images/ic_h5.png",
          "http://www.xn--6nq0vx6trnhlllnzgxi435s.com"),
    ],
    "   北京海天恒信水利工程检测评价有限公司-企业官网。",
    [
      DevInfo("主要职责：", "参与项目管理，拟定开发计划，与客户定制需求等工作。"),
    ]);

//中国水利水电工程网
ProjectBean slsdPj = ProjectBean(
    "中国水利水电工程网",
    "$hostImgHead/hyrc_slsdgcw/logo.png",
    '汇集水利招投标、机械设备、商品采买一站式服务平台。(新版已下线)',
    [
      ScreenBean("$hostImgHead/hyrc_slsdgcw/1.png", "pc"),
      ScreenBean("$hostImgHead/hyrc_slsdgcw/2.png", "pc"),
      ScreenBean("$hostImgHead/hyrc_slsdgcw/3.jpeg", "app"),
    ],
    [
      AppStores("H5", "assets/images/ic_h5.png", "http://www.slsdgc.com.cn"),
    ],
    "   汇集水利招投标、机械设备、商品采买一站式服务平台。",
    [
      DevInfo("主要职责：", "参与项目管理，拟定开发计划，与客户定制需求等工作。"),
    ]);

//会员服务系统
ProjectBean hyfwPj = ProjectBean(
    "会员服务系统",
    "$hostImgHead/hyrc_hyfw/logo.png",
    '为"中国建设工程造价管理协会"用户提供服务',
    [
      ScreenBean("$hostImgHead/hyrc_hyfw/1.png", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/2.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/3.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/4.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/5.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/6.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/7.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/8.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/9.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/10.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/11.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_hyfw/12.jpeg", "app"),
    ],
    [
      AppStores("华为应用市场", "assets/images/huawei.png",
          "https://appgallery.huawei.com/app/C103106075"),
      AppStores("应用宝", "assets/images/yyb.jpg",
          "https://a.app.qq.com/o/simple.jsp?pkgname=com.hyrc.lrs.zjadministration"),
      AppStores("苹果", "assets/images/appStore.png",
          "https://apps.apple.com/cn/app/id1551789845"),
      // AppStores("OPPO", "assets/images/oppo.png",
      //     "https://appgallery.huawei.com/app/C103106075")
    ],
    "   App提供在线缴费、继续教育、在线开票等功能、为会员提供更加方便、快捷、高效的服务；",
    [
      DevInfo("开发语言：", "Android(java、Kotlin) IOS(Vue)"),
      DevInfo("开发工具：", "AndroidStudio、HBuilder、SVN、Git"),
      DevInfo("主流功能：", "百度定位、分享、支付宝支付、微信支付、极光推送-统计、bugly版本升级-错误收集"),
      DevInfo("安卓依赖：",
          "androidx、okhttp、refresh-layout-kernel、XUI、eventbus、butterknife、glide、gson、jpush、tbssdk、bugly、GSYVideoPlayer、guolindev、alipaySdk、wechat-sdk"),
      DevInfo("苹果依赖：", "iView组件库、uniapp框架")
    ]);

//水利云播-云课堂直播
ProjectBean slybPj = ProjectBean(
    "水利云播-云课堂直播",
    "$hostImgHead/hyrc_slyb/logo.jpeg",
    '"系列"云课堂"宣贯活动',
    [
      ScreenBean("$hostImgHead/hyrc_slyb/1.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slyb/2.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_slyb/3.jpeg", "app")
    ],
    [AppStores("H5", "assets/images/ic_h5.png", "https://cms.slyunbo.com")],
    "   水利云播-教育平台，职业生涯管理系统，中观看直播功能，学员在指定时间进行预约直播，直播时间进行，观看视频；直播结束后，根据观看时长，给予学分，颁发证书。",
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "HBuilder、SVN、Git"),
      DevInfo("主流功能：", "HLS传输协议"),
      DevInfo("项目依赖：", "iView组件库、uniapp框架")
    ]);

//辽宁水利信用
ProjectBean lnslPj = ProjectBean(
    "辽宁水利信用",
    "$hostImgHead/hyrc_lnsl/logo.png",
    "告别打卡机，考勤信息随时掌控，让管理不在依赖说教。",
    [
      ScreenBean("$hostImgHead/hyrc_lnsl/1.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/2.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/3.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/4.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/5.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/6.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/7.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/8.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_lnsl/9.jpeg", "app"),
    ],
    [
      AppStores("华为应用市场", "assets/images/huawei.png",
          "https://appgallery.huawei.com/app/C100136853"),
      AppStores("苹果", "assets/images/appStore.png",
          "https://apps.apple.com/cn/app/id1592959946"),
    ],
    "   “辽宁水利信用”是集信用动态、信息查询、考勤打卡于一体的办公类APP，方便政府与企业人员随时随地查询信用信息及了解当前的水利行业动态，方便了解员工出勤情况，动态设置员工考勤。app交互设计合理，界面简洁，易于上手。",
    [
      DevInfo("开发语言：", "Dart、flutter"),
      DevInfo("开发工具：", "AndroidStudio、XCode、SVN、Git"),
      DevInfo("主流功能：", "极光推送-统计、bugly版本升级-错误收集、百度地图、分享、签到拍照"),
      DevInfo("项目依赖：",
          "flutter_baidu_mapapi_map、flutter_bugly、janalytics、flutter_app_installer、flutter_screenutil、pull_to_refresh、dio、webview_flutter、shared_preferences、provider、photo_view、permission_handler、package_info、intl、cached_network_image、cached_network_image、fl_chart、flutter_echarts、path_provider、flutter_cached_pdfview、epub_view、flutter_inappwebview")
    ]);

//云水利
ProjectBean yslPj = ProjectBean(
    "云水利",
    "$hostImgHead/hyrc_ysl/logo.png",
    "完善数据汇总，精准高效，轻松查询。",
    [
      ScreenBean("$hostImgHead/hyrc_ysl/1.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/2.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/3.jpg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/4.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/5.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/6.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/7.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/8.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/9.jpeg", "app"),
      ScreenBean("$hostImgHead/hyrc_ysl/10.jpeg", "app")
    ],
    [
      AppStores(
          "蒲公英", "assets/images/ic_pgy.png", "https://www.pgyer.com/1cfm"),
      AppStores("华为应用市场", "assets/images/huawei.png",
          "https://appgallery.huawei.com/app/C100274265"),
      AppStores(
          "苹果", "assets/images/appStore.png", "https://www.pgyer.com/VlUz")
    ],
    "   “云水利”是集信用动态、信息查询、业务办理、教育于一体的资讯办公类APP，方便政府与企业人员随时随地查询信用信息，查询水利行业标准，在线办理业务，包括监理工程师、造价工程师、质量检测员、执业资质等信息报送，提高业务办理效率。",
    [
      DevInfo("开发语言：", "Dart、flutter"),
      DevInfo("开发工具：", "AndroidStudio、XCode、SVN、Git"),
      DevInfo("主流功能：",
          "极光推送-统计、bugly版本升级-错误收集、支付宝支付、微信支付、苹果内购支付、分享、PDF阅读、epub阅读、WebView、统计图表"),
      DevInfo("项目依赖：",
          "flutter_bugly、janalytics、flutter_app_installer、flutter_screenutil、pull_to_refresh、dio、webview_flutter、shared_preferences、provider、photo_view、permission_handler、package_info、intl、cached_network_image、cached_network_image、fl_chart、flutter_echarts、path_provider、flutter_cached_pdfview、epub_view、flutter_inappwebview")
    ]);

//薪满满
ProjectBean jnmXmm =
    ProjectBean("薪满满", "$hostImgHead/xmm/logo.png", "一款全新在线帮助商家找人，帮助用户找工作的平台", [
  ScreenBean("$hostImgHead/xmm/1.jpg", "app"),
  ScreenBean("$hostImgHead/xmm/2.jpg", "app"),
  ScreenBean("$hostImgHead/xmm/3.jpg", "app"),
  ScreenBean("$hostImgHead/xmm/4.jpg", "app"),
  ScreenBean("$hostImgHead/xmm/5.jpg", "app"),
  ScreenBean("$hostImgHead/xmm/6.png", "app"),
  ScreenBean("$hostImgHead/xmm/7.png", "app"),
  ScreenBean("$hostImgHead/xmm/8.png", "app"),
  ScreenBean("$hostImgHead/xmm/9.png", "app"),
  ScreenBean("$hostImgHead/xmm/10.png", "app"),
  ScreenBean("$hostImgHead/xmm/11.png", "app"),
  ScreenBean("$hostImgHead/xmm/12.png", "app"),
  ScreenBean("$hostImgHead/xmm/13.png", "app"),
  ScreenBean("$hostImgHead/xmm/14.png", "app"),
  ScreenBean("$hostImgHead/xmm/15.png", "app"),
  ScreenBean("$hostImgHead/xmm/16.png", "app"),
  ScreenBean("$hostImgHead/xmm/17.png", "app"),
  ScreenBean("$hostImgHead/xmm/18.png", "app"),
  ScreenBean("$hostImgHead/xmm/19.png", "app"),
  ScreenBean("$hostImgHead/xmm/20.png", "app"),
  ScreenBean("$hostImgHead/xmm/21.png", "app"),
  ScreenBean("$hostImgHead/xmm/22.png", "app"),
  ScreenBean("$hostImgHead/xmm/23.png", "app"),
], [
  AppStores("华为应用市场", "assets/images/huawei.png",
      "https://appgallery.huawei.com/app/C106534693"),
  AppStores("苹果", "assets/images/appStore.png",
      "https://apps.apple.com/cn/app/dsoon/id1630094655")
], """
    一款全新在线帮助商家找人，帮助用户找工作的平台。
我要找工作
【简单高效找到靠谱工作】
足不出户即可查看附近自己想做的高薪工作，薪资真实可靠、平台担保完工后薪资即可到账。拒绝虚假薪资、虚假职位。
【时间地点自由 专属职位推荐】
让你随时随地开赚，自我掌控时间！专属职位订单等你来，只为帮你找到你想做的。更有多重活动，助力收入加成BUF。
【平台资金担保 安全有保障】
双方往来资金有平台托管，全程担保双方利益，防止发生交易风险。
我要招人
【按需付费 降本增效】
在线发布职位订单，用多久就招多久。在也不担心花冤枉钱。招不到不收一分钱。
【智能匹配 在线沟通】
精准匹配，快速查看。随时随地，直接开聊。
    """, [
  DevInfo("开发语言：", "Dart、flutter"),
  DevInfo("开发工具：", "AndroidStudio、XCode、SVN、Git"),
  DevInfo("主流功能：",
      "极光推送-统计、bugly版本升级-错误收集、支付宝支付、微信支付、苹果内购支付、分享、腾讯IM、阿里实名认证、手机号一键登录、高德地图、阿里OSS、友盟统计、相机"),
  DevInfo("项目依赖：",
      "ali_auth、amap_flutter_map、ali_auth_person、aliyun_oss_flutter、tobias、decimal、jpush_flutter、flutter_local_notifications、umeng_common_sdk、in_app_purchase、flutter_easyloading、cached_network_image、flutter_screenutil、pull_to_refresh、dio、webview_flutter、shared_preferences、camera、photo_view、permission_handler、package_info、intl、cached_network_image、cached_network_image、flutter_inappwebview、")
]);

//蜂鸟水印相机
ProjectBean jnmFnsyxj =
    ProjectBean("蜂鸟水印相机", "$hostImgHead/fnsyxj/log.png", "时间地点防篡改，高效管理远程工作", [
  ScreenBean("$hostImgHead/fnsyxj/1.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/2.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/3.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/4.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/5.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/6.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/7.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/8.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/9.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/10.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/11.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/12.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/13.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/14.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/15.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/16.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/17.png", "app"),
  ScreenBean("$hostImgHead/fnsyxj/18.png", "app")
], [
  //
  AppStores("蒲公英", "assets/images/ic_pgy.png", "https://www.pgyer.com/Jr7I"),
  AppStores("华为应用市场", "assets/images/huawei.png",
      "https://appgallery.huawei.com/app/B1232845791"),
  AppStores("苹果", "assets/images/appStore.png",
      "https://apps.apple.com/cn/app/dsoon/id1613304557")
], """
    蜂鸟水印相机，简洁 好用 智能
适用场景以及行业：
【适用场景】
工作实时记录拍照、现场取证、团队协作管理、团队日报、考勤统计、外勤拍照打卡、品牌宣传、会议记录等场景。
【适用行业】
酒店保洁、家政维修、安防安保、房产租售买卖、执勤巡逻、餐饮、零售、快递物流等行业
产品功能介绍：
【极简水印类型】
时间、地点、天气、特色等。
【高效团队管理】
手机端随时随地轻松管理团队的拍照打卡记录，自由查看每个团队每个人的工作记录。管理者可以创建多个团队同时管理。团队实时在线协作。
【AI人脸核验】
智能打卡、云端存储 可以支持人脸核验。
【个性化工作记录】
每张照片及视频都可以备注不同的信息，方便及时记录备注。满足不同场景不同行业个性化备注。
【服务理念】
简单实用的功能、高效工作记录、智能安全可靠。用心服务好每一个使用产品的用户。
    """, [
  DevInfo("开发语言：", "Dart、flutter"),
  DevInfo("开发工具：", "AndroidStudio、XCode、SVN、Git"),
  DevInfo("主流功能：", "极光推送-统计、bugly版本升级-错误收集、阿里实名认证、手机号一键登录、阿里OSS、友盟统计、相机"),
  DevInfo("项目依赖：",
      "ali_auth、ali_auth_person、aliyun_oss_flutter、jpush_flutter、flutter_local_notifications、umeng_common_sdk、flutter_easyloading、cached_network_image、flutter_screenutil、pull_to_refresh、dio、webview_flutter、camera、photo_view、permission_handler、package_info、intl、cached_network_image、cached_network_image、flutter_inappwebview、")
]);

//蓝职通|宜开工
ProjectBean lzt_ykg = ProjectBean(
    "蓝职通|宜开工",
    "$hostImgHead/lzt_ykg/logo.png",
    '一款服务中小招聘商家的人力资源工具|一款为求职者提供工作信息服务的产品',
    [
      ScreenBean("$hostImgHead/lzt_ykg/1.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/2.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/3.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/4.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/5.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/6.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/7.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/8.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/9.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/10.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/11.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/12.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/13.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/14.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/15.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/15.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/17.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/18.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/19.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/20.png", "app"),
      ScreenBean("$hostImgHead/lzt_ykg/21.png", "app"),
    ],
    [
      AppStores("小程序", "assets/images/miniPro.png",
          "weixin://#小程序://蓝职通/YT8SVCIK6LKwbnK")
    ],
    '   一款服务中小招聘商家的人力资源工具|一款为求职者提供工作信息服务的产品。',
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "HBuilder、微信开发者工具"),
      DevInfo("主流功能：", "微信扫码"),
      DevInfo("项目依赖：", "vant、wx-api、腾讯地图")
    ]);

//技能猫商家端|薪满满开工版
ProjectBean jnm_xmm = ProjectBean(
    "技能猫商家端|薪满满开工版",
    "$hostImgHead/jnm_xmm/logo.png",
    '一款服务酒店商家的人力资源工具|一款为酒店兼职保洁提供工作信息服务的产品',
    [
      ScreenBean("$hostImgHead/jnm_xmm/1.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/2.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/3.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/4.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/5.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/6.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/7.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/8.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/9.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/10.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/11.png", "app"),
      ScreenBean("$hostImgHead/jnm_xmm/12.png", "app"),
    ],
    [
      AppStores("小程序", "assets/images/miniPro.png",
          "weixin://#小程序://技能猫商家端/6uPmHQu3wBQz4Ju")
    ],
    '   酒店客房清洁，就找技能猫！首单优惠进行中！商家一件下单，大姐秒接单！覆盖205星级酒店。专业培训，专业服务，高效质保更贴心。',
    [
      DevInfo("开发语言：", "Vue"),
      DevInfo("开发工具：", "HBuilder、微信开发者工具"),
      DevInfo("主流功能：", "微信扫码"),
      DevInfo("项目依赖：", "vant、wx-api、腾讯地图")
    ]);

//项目经历bean
class ProjectBean {
  //名称
  String title;

  //图标地址
  String iconUrl;

  //一句话简介
  String content;

  //应用截图集合
  List<ScreenBean> screenList;

  //应用商店集合
  List<AppStores> appStores;

  //关于应用内容
  String aboutApp;

  //开发信息
  List<DevInfo> devList;

  ProjectBean(this.title, this.iconUrl, this.content, this.screenList,
      this.appStores, this.aboutApp, this.devList);
}

//开发信息
class DevInfo {
  String title;
  String content;

  DevInfo(this.title, this.content);
}

//项目应用商店bean
class AppStores {
  //商店名称
  String name;

  //图标
  String iconUrl;

  //应用下载地址
  String dowUrl;

  AppStores(this.name, this.iconUrl, this.dowUrl);
}

//项目截图bean
class ScreenBean {
  //地址
  String imgUrl;

  //类型，APP PC
  String type;

  ScreenBean(this.imgUrl, this.type);
}
