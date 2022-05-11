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
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              // 在Row中的Container必须设置宽度，否则没有宽度，同理在Column中的Container必须设置高度
              color: Colors.lightBlueAccent,
              height: 50,
            ),
            Expanded(
              child: Container(
                color: Colors.lightGreen,
                height: 50,
              ),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // 声明水平方向的排列方式
          textDirection: TextDirection.rtl,
          children: const [
            Icon(Icons.ac_unit_rounded, size: 50),
            Icon(Icons.search, size: 50),
            Icon(Icons.dangerous, size: 50),
            Icon(Icons.ac_unit_outlined, size: 50),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow,
                width: 50,
                height: 50,
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                // Expanded中的Container的width失效，会默认撑满父级，可以通过flex属性设置宽度占比
                color: Colors.blueGrey,
                width: 100,
                height: 50,
              ),
              flex: 2,
            ),
          ],
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.all(50),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 50,
                ),
                flex: 2,
              ),
              const Spacer(
                // 空白占位符
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  height: 50,
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
