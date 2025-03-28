import 'package:flutter/material.dart';
import 'package:english_learning/learning.dart';
import 'package:english_learning/login.dart';

void main()=>runApp(const EnglishLearning());

class EnglishLearning extends StatelessWidget {
  const EnglishLearning({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  HomePageState createState()=>HomePageState();
}
class HomePageState extends State{
  int selectedIndex=0;
  final pageOptions=[
    Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        title: Container(
          width: 80,
          height: 33,
          decoration: const BoxDecoration(
            color: Color.fromARGB(128, 201, 201, 201),
            borderRadius: BorderRadius.all(Radius.circular(90)),
          ),
          child: const Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 15, 0),
                child: Icon(
                  Icons.domain_verification,
                  size: 30,
                  color: Color.fromARGB(255, 168, 168, 168),
                ),
              ),
              Text(
                "7",
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 168, 168),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.email,
              size: 30,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body:Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("main/background.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                  height: 400,
                  margin: const EdgeInsets.only(top: 20),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              Container(
                                width: 95,
                                decoration: const BoxDecoration(
                                    image:DecorationImage(
                                      image: AssetImage("lib/Images/book01.jpg"),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.centerLeft,
                                    )
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 28,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width:200,
                                            child: Text(
                                              "六级核心（过考版）",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 21,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "修改>",
                                              style: TextStyle(
                                                color: Color.fromARGB(255, 131, 131, 131),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 15, 0, 4),
                                      height: 20,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage("lib/Images/progressBar.jpg"),
                                            fit: BoxFit.contain,
                                          )
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 80,
                                            child: Text(
                                              "141/2551",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              child: Text(
                                                "剩余161天",
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              )
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          color: const Color.fromARGB(255, 236, 236, 236),
                        ),
                        const SizedBox(
                          height: 26,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 85,
                                child: Text(
                                  "今日计划",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                    "随时随地，单词好记",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 24,
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: const EdgeInsets.only(right: 20),
                                child: const Text(
                                  "已学习",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 131, 131, 131),
                                  ),
                                ),
                              ),
                              const Expanded(
                                  child: Text(
                                    "已复习",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 131, 131, 131),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                margin: const EdgeInsets.only(right: 20),
                                child: const Text.rich(
                                  TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "0",
                                          style: TextStyle(
                                            fontSize: 36,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " / 15",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 131, 131, 131),
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Text.rich(
                                  TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "0",
                                          style: TextStyle(
                                            fontSize: 36,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " / 15",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(255, 131, 131, 131),
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 61,
                          margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                height: 61,
                                margin: const EdgeInsets.only(right: 20),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue[600],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: const Text(
                                    "学习",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: (){},
                                ),
                              ),
                              Expanded(
                                child:SizedBox(
                                  height: 61,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue[600],
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: const Text(
                                      "复习",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 1,
                      crossAxisSpacing: 15
                  ),
                  children: [
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "lib/Images/pencil.jpg",
                                  ),
                                  fit: BoxFit.contain,
                                )
                            ),
                          ),
                          const Text("单词训练")
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "lib/Images/notebook.jpg",
                                  ),
                                  fit: BoxFit.contain,
                                )
                            ),
                          ),
                          const Text("单词本")
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "lib/Images/paper.jpg",
                                  ),
                                  fit: BoxFit.contain,
                                )
                            ),
                          ),
                          const Text("真题查词")
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "lib/Images/book2.jpg",
                                  ),
                                  fit: BoxFit.contain,
                                )
                            ),
                          ),
                          const Text("爱阅读")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 80,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: const Text(
                              "这些外刊，六级常考",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Text(
                            "六级阅读听力题，81%选自新鲜外刊",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                        child: Image(
                          image: AssetImage("lib/Images/banner1.jpg"),
                          fit: BoxFit.contain,
                          alignment: Alignment.centerRight,
                        )
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.only(top: 15),
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: const Text(
                              "看《小王子》，练听力",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Text(
                            "每天20min，掌握听力技巧",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                        child: Image(
                          image: AssetImage("lib/Images/banner2.jpg"),
                          fit: BoxFit.contain,
                          alignment: Alignment.centerRight,
                        )
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: const Text(
                              "每日15分钟 化解口语社恐",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const Text(
                            "轻松交流，让英语成为你的社交利器",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                        child: Image(
                          image: AssetImage("lib/Images/banner3.jpg"),
                          fit: BoxFit.contain,
                          alignment: Alignment.centerRight,
                        )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    const Learning(),
    const Login()
  ];
  void onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: pageOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '学习',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
        currentIndex: selectedIndex, // 初始选中的选项卡索引
        onTap: onItemTapped, // 选项卡点击事件
      ),
    );
  }
}
