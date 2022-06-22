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
      body: const GridViewDemo(),
    );
  }
}

class GridViewDemo extends StatelessWidget {
  const GridViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),

      // 固定列表排列
      // child: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     // 水平方向排序
      //     crossAxisCount: 2, // 列数
      //     mainAxisSpacing: 20, // y轴上的间距
      //     crossAxisSpacing: 10, // x轴上的间距
      //     childAspectRatio: 0.5, // 子组件宽高比例，默认1.0
      //   ),
      //   children: [
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       color: Colors.deepOrangeAccent,
      //     ),
      //     Container(
      //       color: Colors.black,
      //     ),
      //     Container(
      //       color: Colors.green,
      //     ),
      //     Container(
      //       color: Colors.red,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //     ),
      //   ],
      // ),

      // 定宽排列
      child: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 160, // 子组件的最大宽度，
          mainAxisSpacing: 20, // y轴间距
          crossAxisSpacing: 10, // x轴间距
          childAspectRatio: 2, // 宽高比例
        ),
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.deepOrangeAccent,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
