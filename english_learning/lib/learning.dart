import 'package:flutter/material.dart';

class IconText extends StatelessWidget{
  final String imageURL;
  final String title;
  const IconText(this.imageURL,this.title, {super.key});
  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageURL),
              )
          ),
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 12
          ),
        )
      ],
    );
  }
}

class Merchandise extends StatelessWidget{
  final String imageURL;
  final String name;
  final String price;
  const Merchandise(this.imageURL,this.name,this.price, {super.key});
  @override
  Widget build(BuildContext context){
    return Container(
        width: 130,
        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 132,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageURL),
                    fit: BoxFit.contain,
                  )
              ),
            ),
            Text(name),
            Text(
              '¥ $price',
              style: const TextStyle(
                  fontSize: 19,
                  color: Colors.orange
              ),
            )
          ],
        )
    );
  }
}

class ThemeInnerBox extends StatelessWidget{
  final String imgURL;
  final String title;
  final String text;
  const ThemeInnerBox(this.imgURL,this.title,this.text,{super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      color: const Color.fromARGB(255, 245, 245, 245),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imgURL),
                    fit: BoxFit.contain
                )
            ),
          ),
          Column(
              children: [
                Container(
                  width: 90,
                  height: 18,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 14
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 32,
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(
                            255, 140, 140, 140)
                    ),
                  ),
                ),
              ]
          )
        ],
      ),
    );
  }
}

class Theme extends StatelessWidget{
  final Color themeColor;
  final String title;
  final CircleAvatar user;
  final CircleAvatar user2;
  final CircleAvatar user3;
  final CircleAvatar user4;
  final String onlinePresence;
  final String imgURL;
  final String innerImgURL;
  final String innerImgURL2;
  final String innerImgURL3;
  final String innerImgURL4;
  final String innerTitle;
  final String innerTitle2;
  final String innerTitle3;
  final String innerTitle4;
  final String innerText;
  final String innerText2;
  final String innerText3;
  final String innerText4;
  const Theme(this.themeColor,this.title,this.user,this.user2,this.user3,this.user4,this.onlinePresence,this.imgURL,this.innerImgURL,this.innerImgURL2,this.innerImgURL3,this.innerImgURL4,this.innerTitle,this.innerTitle2,this.innerTitle3,this.innerTitle4,this.innerText,this.innerText2,this.innerText3,this.innerText4,{super.key});
  @override
  Widget build(BuildContext context){
    return Container(
      height: 300,
      color: const Color.fromARGB(255, 245, 245, 245),
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                margin: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    color: themeColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: Container(
                  width: 500,
                  margin: const EdgeInsets.only(left: 120),
                  child: Column(
                    children: [
                      Container(
                        width: 500,
                        height: 40,
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          title,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        height: 25,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: 25,
                                  height: 25,
                                  child: user
                                ),
                                SizedBox(
                                  width: 60,
                                  height: 25,
                                  child: user2
                                ),
                                SizedBox(
                                  width: 95,
                                  height: 25,
                                  child: user3
                                ),
                                SizedBox(
                                  width: 130,
                                  height: 25,
                                  child: user4
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(80, 2, 0, 0),
                                  child: Text(
                                    onlinePresence,
                                    style: const TextStyle(
                                        color: Colors.white
                                    ),
                                  )
                                )
                              ],
                            )
                          ]
                        )
                      ),
                    ],
                  ),
                )
              ),
              Positioned(
                  left: 20,
                  child: Container(
                    width: 90,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image: AssetImage(imgURL),
                          fit: BoxFit.contain,
                        )
                    ),
                  )
              ),
              Container(
                height: 185,
                margin: const EdgeInsets.only(top: 115),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      childAspectRatio: 2.3
                  ),
                  padding: const EdgeInsets.all(15),
                  children: [
                    ThemeInnerBox(innerImgURL, innerTitle, innerText),
                    ThemeInnerBox(innerImgURL2, innerTitle2, innerText2),
                    ThemeInnerBox(innerImgURL3, innerTitle3, innerText3),
                    ThemeInnerBox(innerImgURL4, innerTitle4, innerText4),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class Learning extends StatelessWidget{
  const Learning({super.key});
  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 245, 245, 245),
          title: const TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 15,
            ),
            tabs: <Tab>[
              Tab(text:'精选'),
              Tab(text:'我的'),
            ],
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 245, 245, 245),
          child: TabBarView(
            children: [
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                children: [
                  Container(
                    height: 206,
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                    color: Colors.white,
                    child: GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 25,
                        crossAxisSpacing: 18,
                        crossAxisCount: 5,
                        childAspectRatio: 0.8,
                      ),
                      children: const [
                        IconText('lib/Images/blackboard.jpg', '四六级课'),
                        IconText('lib/Images/form.jpg', '职场技能'),
                        IconText('lib/Images/plane.jpg', '出国留学'),
                        IconText('lib/Images/book2.jpg', '爱阅读'),
                        IconText('lib/Images/paper.jpg', '真题查词'),
                        IconText('lib/Images/paper2.jpg', '每日一句'),
                        IconText('lib/Images/form2.jpg', '听说读写'),
                        IconText('lib/Images/earphones.jpg', '每日听力'),
                        IconText('lib/Images/teacup.jpg', '实用英语'),
                        IconText('lib/Images/live.jpg', '小讲堂'),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                    child: Text(
                      '英语专项突破',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    color: Colors.white,
                    child: ListView(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Merchandise('lib/Images/ad1.jpg', '六级过级秘籍', '50'),
                        Merchandise('lib/Images/ad2.jpg', '听力4天体验营', '6'),
                        Merchandise('lib/Images/ad3.jpg', '番茄口语', '6')
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: Text(
                      '专题学习',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Theme(Color.fromARGB(255, 121, 161, 51),'大学考试 >',CircleAvatar(child:Icon(Icons.account_circle)),CircleAvatar(child:Text('A')),CircleAvatar(child:Icon(Icons.accessibility)),CircleAvatar(child:Text('B')),'4.3w人在学','lib/Images/m1.jpg','lib/Images/themeInnerImg.jpg','lib/Images/themeInnerImg2.jpg','lib/Images/themeInnerImg3.jpg','lib/Images/themeInnerImg4.jpg','外刊精品课','大学四级','大学六级','大学专升本','提升阅读词汇','系统规划，助\n你过级','六级过级秘籍\n课','上岸必备，基\n础提升'),
                  const Theme(Color.fromARGB(255, 185, 180, 174),'实用英语 >',CircleAvatar(child:Text('A')),CircleAvatar(child:Icon(Icons.account_circle)),CircleAvatar(child:Text('B')),CircleAvatar(child:Icon(Icons.accessibility)),'2.2w人在学','lib/Images/theme2.jpg','lib/Images/theme2InnerImg1.jpg','lib/Images/theme2InnerImg2.jpg','lib/Images/theme2InnerImg3.jpg','lib/Images/theme2InnerImg4.jpg','外刊精读','听力体验营','特色口语','番茄英语','看世界+提高\n阅读词汇量','无字幕看电影','专业指导,地道\n口语表达','旅行+学口语'),
                  const Theme(Color.fromARGB(255, 197, 197, 197),'出国英语 >',CircleAvatar(child:Icon(Icons.accessibility)),CircleAvatar(child:Icon(Icons.account_circle)),CircleAvatar(child:Text('B')),CircleAvatar(child:Text('A')),'3.2w人在学','lib/Images/theme3.jpg','lib/Images/theme3InnerImg1.jpg','lib/Images/theme3InnerImg2.jpg','lib/Images/theme2InnerImg2.jpg','lib/Images/theme2InnerImg4.jpg','搞定雅思','搞定托福','听力体验营','旅游场景···','提分只用学重\n点!','技巧+机考,\n高效提分!','看电影,趣味学\n听力','实景学英语,\n进步更快!'),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
