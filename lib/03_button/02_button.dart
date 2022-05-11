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
      body: ButtonDemo(),
    );
  }
}

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        children: [
          OutlinedButton(
            onPressed: () {
              print('查看一下点击事件 OutlinedButton');
            },
            onLongPress: () {
              print('长按事件 OutlinedButton');
            },
            child: const Text('OutlinedButton'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              foregroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  // 按下按钮时的字体颜色
                  return Colors.red;
                }
                // 默认颜色
                return Colors.blue;
              }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  // 按下按钮时的字体颜色
                  return Colors.yellow;
                }
                // 默认颜色
                return Colors.white;
              }),
              // 设置阴影
              shadowColor: MaterialStateProperty.all(Colors.yellow),
              elevation: MaterialStateProperty.all(20),
              // 设置大小
              minimumSize: MaterialStateProperty.all(const Size(200, 100)),
              // 设置边框
              side: MaterialStateProperty.all(
                const BorderSide(
                  width: 2,
                  color: Colors.green,
                ),
              ),
              // 设置边框形状
              shape: MaterialStateProperty.all(
                const StadiumBorder(
                  side: BorderSide(
                    width: 2,
                    color: Colors.green,
                  ),
                ),
              ),
              // 设置水波纹
              overlayColor: MaterialStateProperty.all(Colors.pink),
            ),
          )
        ],
      ),
    );
  }
}
