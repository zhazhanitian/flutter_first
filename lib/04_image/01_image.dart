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
      body: const ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 加载本地图片
        Image.asset(
          'images/kill.jpg',
          width: 200,
          height: 200,
          fit: BoxFit.fill,
        ),

        // 加载在线图片
        Image.network(
          'https://duckfiles.oss-cn-qingdao.aliyuncs.com/eleduck/avatar/15dee79c-f44f-42c1-9480-b8ef4f4e4e7c.jpeg!48',
          width: 120,
          height: 200,
          repeat: ImageRepeat.repeat,
          // 设置背景色会覆盖图片
          color: Colors.green,
          // 设置背景色和图片的混入方式
          colorBlendMode: BlendMode.colorBurn,
        )
      ],
    );
  }
}
