import 'dart:ffi';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        actions: const [
          Icon(Icons.search),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'The latest version of Material Design is now available for Android',
        style: TextStyle(fontSize: 20, color: Colors.red),
      ),
      width: 200,
      height: 200,
      // width: double.infinity, // 自适应父级宽度
      // height: double.infinity, // 自适应父级高度
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      alignment: Alignment.center,
      // transform: Matrix4.translationValues(100, 0, 0), // 平移
      // transform: Matrix4.rotationZ(-0.2), // 旋转
      transform: Matrix4.skewX(0.8), // 斜切
      decoration: BoxDecoration(
        // border: Border(
        //   top: BorderSide(
        //     color: Colors.red,
        //     width: 9,
        //   ),
        //   left: BorderSide(
        //     color: Colors.red,
        //     width: 9,
        //   ),
        //   right: BorderSide(
        //     color: Colors.red,
        //     width: 9,
        //   ),
        //   bottom: BorderSide(
        //     color: Colors.red,
        //     width: 9,
        //   ),
        // ),
        border: Border.all(
          color: Colors.red,
          width: 10,
        ),
        // borderRadius: BorderRadius.all(Radius.circular(20)), // 设置边框圆角，必须设置四边边框颜色和宽度完全一致
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
        ),
        color: Colors.lightGreen, // 设置背景色
        gradient: const LinearGradient(
          // 设置渐变会是背景色时效
          colors: [
            Colors.lightBlue,
            Colors.white12,
          ],
        ),
      ), // 设置单边圆角
    );
  }
}
