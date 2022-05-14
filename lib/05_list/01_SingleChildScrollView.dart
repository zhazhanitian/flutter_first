import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 水平方向滚动
        SingleChildScrollView(
          // 滚动方向
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          // 是否倒叙滚动
          reverse: true,
          child: Row(
            children: List.generate(
              100,
              (index) => OutlinedButton(
                onPressed: () {},
                child: Text('按钮$index'),
              ),
            ),
          ),
        ),

        // 垂直方向滚动
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(10),
          // 设置iOS下拉弹跳效果
          physics: const BouncingScrollPhysics(),
          reverse: false,
          child: Column(
            children: List.generate(
              100,
              (index) => OutlinedButton(
                onPressed: () {},
                child: Text('按钮$index'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
