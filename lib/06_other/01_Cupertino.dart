import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

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
      body: const CupertinoDemo(),
    );
  }
}

class CupertinoDemo extends StatelessWidget {
  const CupertinoDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget dialogBox = const CupertinoTest();
    if (Platform.isIOS) {
      dialogBox = const CupertinoTest();
    }
    if (Platform.isAndroid) {
      dialogBox = const MaterialDemo();
    }

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Material - 安卓风格'),
          // const MaterialDemo(),
          dialogBox,
          const Text('Cupertino - IOS风格'),
          const CupertinoTest(),
        ],
      ),
    );
  }
}

class MaterialDemo extends StatelessWidget {
  const MaterialDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: const Text('提示'),
        content: const Text('确认删除吗？'),
        actions: [
          TextButton(
            onPressed: () {
              print('取消逻辑');
            },
            child: const Text('取消'),
          ),
          TextButton(
            onPressed: () {
              print('确认逻辑');
            },
            child: const Text('确认'),
          ),
        ],
      ),
    );
  }
}

class CupertinoTest extends StatelessWidget {
  const CupertinoTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: const Text('提示'),
        content: const Text('确认删除吗？'),
        actions: [
          CupertinoDialogAction(
            child: const Text('取消'),
            onPressed: () {
              print('取消逻辑');
            },
          ),
          CupertinoDialogAction(
            child: const Text('确认'),
            onPressed: () {
              print('确认逻辑');
            },
          ),
        ],
      ),
    );
  }
}
