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
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  WrapDemo({Key? key}) : super(key: key);

  final List<String> _list = ['曹操', '曹植', '曹丕', '司马懿', '张辽', '张角'];

  List<Widget> _getList() {
    return _list
        .map((e) => Chip(
              // 注意这里如果使用箭头函数，只能写一行
              avatar: const CircleAvatar(
                backgroundColor: Colors.lightGreen,
                child: Text('魏'),
                foregroundColor: Colors.white,
              ),
              label: Text(e),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Wrap(
          children: _getList(),
          spacing: 18.0, // 水平间距
          runSpacing: 22.0, // 锤子方向的间距
          alignment: WrapAlignment.spaceAround, // 主轴方向的对齐方式
          runAlignment:
              WrapAlignment.spaceAround, // 纵轴方向的对其方式，当前没啥效果是因为Column的影响
        ),
        Wrap(
          children: const [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('刘备'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('关羽'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('张飞'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('诸葛亮'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('刘禅'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('黄总'),
            ),
          ],
        ),
        Row(
          // 溢出不会自动换行或隐藏，而是直接报错
          children: const [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lime,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('刘备'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lime,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('关羽'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lime,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('张飞'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lime,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('诸葛亮'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lime,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('刘禅'),
            ),
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.lime,
                child: Text('蜀'),
                foregroundColor: Colors.white,
              ),
              label: Text('黄总'),
            ),
          ],
        ),
      ],
    );
  }
}
