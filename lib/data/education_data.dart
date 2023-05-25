const String hostImgHead = "http://baichao.jdysoft.cn/lrs_files/edu";

List<EducationBean> educationList = [
  EducationBean("中南财经政法大学", "$hostImgHead/zncj.webp", "本科", "金融学", "2021",
      "待毕业(2024)", []),
  EducationBean(
      "国家开放大学", "$hostImgHead/gjkf.webp", "专科", "计算机网络技术", "2019", "2022", []),
  EducationBean("北京卓达经济管理研修学院", "$hostImgHead/bjzd.jpg", "专科", "计算机软件", "2012",
      "2014", []),
];

//教育经历
class EducationBean {
  String title;
  String img;
  String levelName;
  String majorName;
  String bTime;
  String eTime;
  List<String> imgList;

  EducationBean(this.title, this.img, this.levelName, this.majorName,
      this.bTime, this.eTime, this.imgList);
}
