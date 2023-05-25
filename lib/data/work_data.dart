import 'package:flutter/material.dart';
import 'package:my_resume/data/project_data.dart';

/////////////////////////////////////////公司信息/////////////////////////////////////////

List<WorkDelBean> listWorks = [jnmWorkDel, hyrcWorkDel, sjjzWorkDel];

//世纪金证详情信息
WorkDelBean sjjzWorkDel = WorkDelBean(
    "世纪金证",
    "assets/images/work/sjjz_logo.png",
    "不需要融资",
    "100-499人",
    "互联网",
    "上午09：00-下午06：00",
    "双休",
    "偶尔加班",
    [
      TreatmentBean("五险一金", Icons.account_balance_outlined),
      TreatmentBean("股票期权", Icons.add_chart),
      TreatmentBean("带薪年假", Icons.wallet_travel),
      TreatmentBean("员工旅游", Icons.wallpaper),
      TreatmentBean("餐补", Icons.wine_bar_outlined),
      TreatmentBean("节日福利", Icons.wallet_giftcard_outlined)
    ],
    "assets/images/work/sjjz_bg.png",
    "北京市西城区广安门外南滨河路甲25号金工宏洋大厦A座6层",
    "         北京世纪金政信息技术股份有限公司，成立于2001年，注册资金500万元人民币，是国家高新技术企业、中关村高新技术企业、瞪羚企业和北京市双软企业，并于2015年完成股改挂牌全国中小企业股份转让系统（新三板，股票号码：833494 ）。\n"
        "         公司汇聚了众多培训业务专家、互联网运营专家和平台技术专家，专注于为客户提供智能化人才发展解决方案，提供人才发展优化为目标，线上线下相融合的学习项目策划与运营服务，以及网络课程的设计与开发等服务。研发了包括善学、互动星、面试星、人才评测等系列产品，拥有政府、能源、电力、金融、民航、教育和出版等行业领域的众多成功案例。",
    [
      "公司全称     北京世纪金政信息技术股份有限公司",
      "信用代码     9111010880212462XB",
      "法定代表     王云飞",
      "注册资本     500万(元)",
      "成立日期     2001-07-30",
      "企业类型     股份有限公司",
      '经营范围     技术开发、技术推广、技术转让、技术咨询、技术服务；软件开发；计算机系统服务；企业管理咨询；教育咨询；销售电子产品、计算机、软件及辅助设备；会议服务；承办展览展示活动；投资管理。（市场主体依法自主选择经营项目，开展经营活动；依法须经批准的项目，经相关部门批准后依批准的内容开展经营活动；不得从事国家和本市产业政策禁止和限制类项目的经营活动。）'
    ],
    "北京市 西城区 广外大街",
    "2015年12月至2018年5月",
    "担任Android开发工程师");

//宏宇睿晨详细信息
WorkDelBean hyrcWorkDel = WorkDelBean(
    "宏宇睿晨",
    "assets/images/work/hyrc_logo.png",
    "未融资",
    "0-20人",
    "信息安全",
    "上午09：00-下午06：00",
    "双休",
    "不加班",
    [
      TreatmentBean("五险一金", Icons.account_balance_outlined),
      TreatmentBean("加班补助", Icons.watch_later_outlined),
      TreatmentBean("年终奖", Icons.wallet_membership_outlined),
      TreatmentBean("带薪年假", Icons.wallet_travel),
      TreatmentBean("节日福利", Icons.wallet_giftcard_outlined)
    ],
    "assets/images/work/hyrc_bg.png",
    "北京房山区起航国际3期16号院13号楼504室",
    "   北京宏宇睿晨信息技术有限公司成立于2011年，是专注于行业信息化的IT服务提供商，是北京市软件企业、高新技术企业、科技型中小企业。\n"
        "   根据国务院《关于社会信用体系建设规划纲要》，公司致力于为水利、建设等行业提供专业的信用体系建设信息化解决方案。经过多年的发展，公司形成了“圆环形”的发展战略，暨以行业“信用体系”建设为圆心，以“信用体系标准建设”、“行业信用评价”等以服务于信用体系建设为圆环的互联网应用服务和大数据服务为牵引，彼此依托，努力成为中国行业信用体系建设的中坚力量。\n"
        "   公司产品围绕“信用体系建设”核心，涵盖行业“信用征集体系”、“信用评价体系”、“信用标准体系”、“行业工程项目动态管理”、“人员注册管理”等领域，为政府、行业提供整体解决方案和专业服务，目前产品已在全国所有省市广泛应用。\n"
        "   公司拥有高素质的技术研发和服务团队，建立了领先的技术管理模式、IT服务模式，形成了一套具有自身特色的、符合现代企业发展的科学管理体系，持续为客户提供卓越的产品和服务。\n"
        "   未来，公司继续围绕“圆环形”的发展战略，持续在行业信用体系建设领域不断创新，迎接行业变革新挑战。",
    [
      "公司全称     北京宏宇睿晨信息技术有限公司",
      "信用代码     91110108582533228W",
      "法定代表     卢晓芳",
      "注册资本     50万人民币",
      "成立日期     2011-09-15",
      "企业类型     有限责任公司",
      "经营范围     技术开发、技术推广、技术转让、技术咨询、技术服务；计算机技术培训；计算机系统服务、数据处理、计算机维修；基础软件服务、应用软件服务。(企业依法自主选择经营项目，开展经营活动；依法须经批准的项目，经相关部门批准后依批准的内容开展经营活动；不得从事本市产业政策禁止和限制类项目的经营活动。)"
    ],
    "北京市 房山区 长阳",
    "2018年5月2022年4月",
    "担任移动开发工程师");

//北京技能猫信息技术有限公司
WorkDelBean jnmWorkDel = WorkDelBean(
    "技能猫",
    "assets/images/work/jnm_logo.jpg",
    "天使轮",
    "20-99人",
    "在线教育",
    "上午10：00-下午07：00",
    "双休",
    "偶尔加班",
    [
      TreatmentBean("五险一金", Icons.account_balance_outlined),
      TreatmentBean("年终奖", Icons.wallet_membership_outlined),
      TreatmentBean("股票期权", Icons.monetization_on),
      TreatmentBean("带薪年假", Icons.wallet_travel),
      TreatmentBean("员工旅游", Icons.wallet_giftcard_outlined),
      TreatmentBean("免费班车", Icons.directions_bus_rounded)
    ],
    "assets/images/work/jnm_bg.png",
    "北京市朝阳区酒仙桥路13号148号楼3层357",
    "北京技能猫信息技术有限公司，是由58同城集团孵化的互联网公司，总部位于北京。目前在济南、杭州、合肥设立分公司\n"
        "口依托58同城、58家政的招聘和服务能力，技能猫建立了完善的酒店客房清洁业务、家政业务以及灵活用工业务等。\n"
        "技能猫致力于打造全国最高标准的客房清洁服务，同时降低酒店招聘、管理等用工成本和风险，解决酒店运营过程中招人难、管理难、用人难的问题。同时，公司技术团队也有自主研发的微信小程序：薪满满、蓝职通、宜开工等\n"
        "自2020年9月成立至今，我们已为超过300家中高端酒店提供客房清洁服务，管理房间超30000间，拥有近2000八的客房清洁团队，并100%通过客房清洁技能考核。\n"
        "我们的业务目前已经覆盖杭州、合肥和济南，预计2021年服务将覆盖10个城市，2022年覆盖30个城市。",
    [
      "公司全称     北京技能猫信息技术有限公司",
      "信用代码     91110105MA01W5WD6D",
      "法定代表     郭义",
      "注册资本     127.3973万(元)",
      "成立日期     2020-09-24",
      "企业类型     有限责任公司(自然人投资或控股)",
      "经营范围     一般项目：技术服务、技术开发、技术咨询、技术交流、技术转让、技术推广；组织文化艺术交流活动；计算机系统服务；教育咨询服务（不含涉许可审批的教育培训活动）；广告制作；广告设计、代理；软件开发；企业管理咨询；市场营销策划；建筑物清洁服务；专业保洁、清洗、消毒服务；家政服务；会议及展览服务；针纺织品及原料销售；日用百货销售；钟表销售；眼镜销售（不含隐形眼镜）；鞋帽零售；服装服饰零售；厨具卫具及日用杂品零售；化妆品零售；箱包销售。（除依法须经批准的项目外，凭营业执照依法自主开展经营活动）许可项目：网络文化经营；互联网信息服务；职业中介活动；涉外调查。（依法须经批准的项目，经相关部门批准后方可开展经营活动，具体经营项目以相关部门批准文件或许可证件为准）（不得从事国家和本市产业政策禁止和限制类项目的经营活动。）"
    ],
    "北京市 朝阳区 酒仙桥",
    "2022年4月至今",
    "担任Flutter开发工程师");
List<ComPro> comInfoList = [
  ComPro("北京技能猫信息技术有限公司", "assets/images/work/jnm_logo.jpg",
      [jnmXmm, jnmFnsyxj, jnm_xmm, lzt_ykg]),
  ComPro("北京宏宇睿晨信息技术有限公司", "assets/images/work/hyrc_logo.png", [
    yslPj,
    lnslPj,
    slybPj,
    hyfwPj,
    slsdPj,
    hthxdPj,
    kstPj,
    slzypxPj,
    slzjtjPj,
    sxeGPj,
    bcPj,
    sgbjPj,
    fFenPj
  ]),
  ComPro("北京世纪金政信息技术股份有限公司", "assets/images/work/sjjz_logo.png",
      [bjgjwPj, djxxhPj, msxPj, hdxPj, hkwxpPj]),
  ComPro("其他", "assets/images/work/ic_my_pro.png", [myResumePj])
];

class WorkDelBean {
  //公司简称名称
  String comAbbName;

  //logo
  String comImgUrl;

  //属性
  String typeString1;
  String typeString2;
  String typeString3;

  //工作时间
  String workDate;

  //休息
  String restDate;

  //工作强度
  String workStr;

  //待遇
  List<TreatmentBean> treatList;

  //详情背景图
  String bgImg;

  //公司地址
  String comAddress;

  //介绍
  String comIntroduce;

  //工商信息
  List<String> infoList;

  //地址 三级
  String addressTag;

  //工作时间
  String inWorkDate;

  //职责
  String workDuty;

  WorkDelBean(
      this.comAbbName,
      this.comImgUrl,
      this.typeString1,
      this.typeString2,
      this.typeString3,
      this.workDate,
      this.restDate,
      this.workStr,
      this.treatList,
      this.bgImg,
      this.comAddress,
      this.comIntroduce,
      this.infoList,
      this.addressTag,
      this.inWorkDate,
      this.workDuty);
}

//二级分类
class ComPro {
  String title;
  String iconUrl;
  List<ProjectBean> infoList;

  ComPro(this.title, this.iconUrl, this.infoList);
}

class TreatmentBean {
  String title;
  IconData iconData;
  List<String>? infoList;

  TreatmentBean(this.title, this.iconData);
}
