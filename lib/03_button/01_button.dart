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
          TextButton(
            onPressed: () {
              print('查看一下点击事件');
            },
            onLongPress: () {
              print('长按事件');
            },
            child: const Text('TextButton'),
          ),
          ElevatedButton(
            onPressed: () {
              print('查看一下点击事件 ElevatedButton');
            },
            onLongPress: () {
              print('长按事件 ElevatedButton');
            },
            child: const Text('ElevatedButton'),
          ),
          OutlinedButton(
            onPressed: () {
              print('查看一下点击事件 OutlinedButton');
            },
            onLongPress: () {
              print('长按事件 OutlinedButton');
            },
            child: const Text('OutlinedButton'),
          )
        ],
      ),
    );
  }
}
