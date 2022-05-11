import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Demo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const StackDEmo(),
    );
  }
}

class StackDEmo extends StatelessWidget {
  const StackDEmo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        textDirection: TextDirection.rtl, // 控制未设置定位元素的水平位置
        alignment: Alignment.bottomCenter, // 设置未定位元素的垂直方向位置
        children: [
          const CircleAvatar(
            // 如果图片地址为非https的则加载不出来，需要到AndroidMainfest文件中添加配置
            backgroundImage: NetworkImage(
                'https://img14.360buyimg.com/ceco/s300x300_jfs/t1/159722/38/5682/268261/601a43e3E78cbacb6/60bdf8c1c170c8ae.jpg!q70.jpg.webp'),
            radius: 150,
          ),
          Positioned(
            child: Container(
              child: const Text(
                '热卖',
                style: TextStyle(color: Colors.white),
              ),
              padding: const EdgeInsets.all(10),
              color: Colors.red,
            ),
            top: 60,
            right: 20,
          ),
          const Text(
            '售卖10',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
