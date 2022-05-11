import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Demo'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(30),
          color: Colors.pink[200],
          shadowColor: Colors.blue, // 设置阴影颜色
          elevation: 30.0, // 设置阴影大小
          shape: RoundedRectangleBorder(
            // 设置边框
            borderRadius: BorderRadius.circular(20), // 设置边框圆角
            side: const BorderSide(
              // 设置边框颜色及宽度
              color: Colors.yellow,
              width: 3,
            ),
          ),
          child: Column(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.supervised_user_circle_rounded,
                  size: 30,
                ),
                title: Text(
                  '张三',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  '董事长',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              ListTile(
                title: Text(
                  '电话: 1231313131313',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '地址: xxxxxxxxxxxx',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
