const String hostImgHead = "http://baichao.jdysoft.cn/lrs_files/project_img/";
//我的简历
ProjectBean myResumePj = ProjectBean(
    "我的简历",
    "$hostImgHead/my_header/logo.jpeg",
    '展示我的简历',
    [],
    [AppStores("H5", "assets/images/ic_pgy.png", "https://www.pgyer.com/0RWP")],
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/d450462e-0625-4e16-b595-c7ee6f3bfb7e.png",
    '水利工程专业题型，等你来练习',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/6e5dc503-9107-4d5e-ac27-6df14c98e9c1.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/393759c2-f4db-4b6a-a433-4dffc1e333c9.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/b4ebb0ec-edca-4f3f-ab5f-c2c9ec75ab72.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/975010ae-23c6-4f51-bc3f-0f54b777307a.jpg",
          "app")
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/01d16559-bd85-41cc-8267-ab09418a6f2f.png",
    '海川韵通',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/a42ceb8a-8772-4c0f-9d08-2545cf7aaf78.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/251a9db4-9043-4a81-a2a7-2452ad422eca.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/2a02e6f6-0230-4998-bec7-14d59956de83.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/7a913d7c-7112-4937-9fb0-74a704de7398.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/9f615483-6b7e-4780-8a32-a2add7c74844.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/f9e19e6e-d597-4fd5-b699-58c4c5d8e3f9.jpg",
          "app")
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/36828617-1008-4c03-92f9-bc8577190b1d.png",
    '一款在线练习的题库，分为免费题库和付费题库，可进行在线刷题、搜索答案等。',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/e52fbe83-c025-461b-8f44-54f6e5550fef.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/090e7d09-0e6e-4e6b-9f97-70908514642b.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/fb698724-e1cb-4c10-b08c-a7e74760b344.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/a5bde62b-2af1-408f-97bc-959dcd7f7fdb.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/9a2fae42-77dc-42fb-838c-9074f68a395c.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/58ee4cce-94b3-4aef-a0b0-bee1e1081b03.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/90d3b679-8bac-46ea-aa95-900b2b610bc6.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/dab24cb5-1ff5-47d3-9bc6-3d9e979cd0f7.jpg",
          "app")
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/64ee5c5c-244f-494c-828a-8fc36e0acfc4.png",
    '海纳百川恒久远，天容万物信无涯',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/85898f03-4577-4176-baba-9d603678ef4e.jpg",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/e3014045-7d18-43ce-b07f-769a66c79372.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/d4ed67bd-7d63-496e-953f-d2caa1c4b849.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/4c889a50-e4ab-4dcd-b0d1-9e1258830ebf.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/bbfb961d-6d8d-4e91-981b-f78c92a939d7.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/c60181cd-5e23-4817-a1e8-125c3ff85084.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/d73d2fab-a9bd-407b-98c0-0485dc7d3ad2.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/c3a2123b-df4c-43a9-99d0-1bf0bbf05102.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/c8c3462c-e39e-449f-8e74-2594a63d0753.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/5130ea11-061b-447c-8350-8e461fae753a.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/7aff8a4f-a99f-4a6d-ada0-b6785e33b0b4.png",
          "pc"),
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/bb83bf95-56df-44e3-b38d-56930719e74a.png",
    '汇集水利招投标、机械设备、商品采买一站式服务平台。',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/d8908dfe-4c75-4193-8c51-43c4072d8ffc.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/69f91b98-722c-4043-89d1-24c95cab00c4.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/8d44e3d0-6a10-411a-afa2-4ebb9011c33f.png",
          "pc"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/2d71282e-ed85-4774-a849-4ae515207e5d.jpg",
          "pc")
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/e2d06899-2c7d-4a51-8eae-52ab5e8e4fd4.png",
    '为"中国建设工程造价管理协会"用户提供服务',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/94037ee8-b2f1-4f41-8b11-8dfdc32d58e0.png",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/d3833f1d-7317-4861-a822-23467c75f8ca.png",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/8a476c49-5cd3-4ce4-9173-e5b6997e2089.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/269c9651-1c65-4392-876c-39ba3e8d7bef.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/3860e0ed-167b-4b39-9b59-19c6b67058d4.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/7fc5501a-b494-41ab-ba78-25fc8e0d6f8a.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/ae375224-b60f-45ca-875e-35b109bf4386.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/3352fedf-507d-42bd-8afd-94cd092b5c65.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/a1f9195d-cbf3-4246-bd85-cb54b6011dbe.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/f21c73d6-4cbc-489b-a9e6-6bf7ae7e69ab.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/58a4f5df-a761-49f8-82cc-153b97a5ebd0.jpg",
          "app"),
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/ae5eff60-9d75-464d-8e93-bda55fb481b4.png",
    '"系列"云课堂"宣贯活动',
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/311515da-c334-47b8-a4ce-961e2f697fce.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/9edeaecf-7a4e-42d1-8089-35e31fcb16cc.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/bb5a59e1-0787-45d2-9384-85b2f7bcce7a.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/d67de5ce-3a20-4bd2-8d60-1550b6b9f09b.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/600deabf-24c1-428c-8867-b451407e97aa.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/ca9c3649-0023-4ab7-9178-ec6bc53f222e.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/c7ef1393-cc51-45ef-a82c-60a991b5e0fb.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/a331d0ec-0c7a-45d0-8f8c-91f43c686057.jpg",
          "app"),
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/211639d7-5561-470d-8251-8b7055195ec6.png",
    "告别打卡机，考勤信息随时掌控，让管理不在依赖说教。",
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/ba022d50-baea-4a9d-80ed-c9bce0426b59.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/47c1b942-ade2-4f90-add4-44171ce0a5d8.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/6e080785-3ad4-479d-b90b-3c943a9ee1e2.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/b638981a-066e-467b-bd76-8edafd7c3c8b.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/319630f9-26aa-4f76-ab0e-3aa25c89bbc3.png",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/f4ee5082-b657-482a-9da0-2ec2b4e37af1.png",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/c51c20a1-1a7b-469f-a6f7-07e2ed603105.png",
          "app"),
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
    "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/f3c156cc-0caa-44f4-bbeb-8afc368c966a.png",
    "完善数据汇总，精准高效，轻松查询。",
    [
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/53af11ed-e5a5-44cc-9591-e20d69392525.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/7fa2f085-f069-4e85-bb37-94d178ec5899.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/59fa9e25-af10-4a63-ad49-2c95ace397ee.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/7764c80d-b963-43ac-9da6-1a4814175368.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/ddbd2dfa-84a4-4a49-ac9b-0ebbeba31678.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/b0b2d23c-866d-48bb-99d8-340c1bef3ff2.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/237df3be-db70-49aa-ba6e-4498370f3cd1.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/8c5ff68c-3a8c-439b-8e47-72860202ec94.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/f567a1ed-d3c3-45d1-9830-c19de5c40e59.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/2900b352-7a9f-4502-adcc-a30cf10eb9da.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/7773fa4b-1eb4-43de-96f0-076ff52394fe.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/fb0264ff-f056-4930-84d2-770d9d616897.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/ed24c818-1c82-4774-96e1-041d522e90c6.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/0c29c876-6c32-4f7c-8fd4-b38d06553bac.jpg",
          "app"),
      ScreenBean(
          "https://vkceyugu.cdn.bspapp.com/VKCEYUGU-2243c45a-8403-4ee4-8a56-a7a20bd7f54e/0350ed34-2fa0-435c-af6a-36ecc62c1888.jpg",
          "app")
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
