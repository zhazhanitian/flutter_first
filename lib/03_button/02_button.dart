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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
        elevation: 0,
      ), //
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
          ),

          // 主题按钮
          OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
            child: OutlinedButton(
              onPressed: () {
                print('查看一下点击事件 OutlinedButton');
              },
              onLongPress: () {
                print('长按事件 OutlinedButton');
              },
              child: const Text('OutlinedButton'),
              style: ButtonStyle(
                // 单独设置style会覆盖主题style
                overlayColor: MaterialStateProperty.all(Colors.yellow),
              ),
            ),
          ),

          // 图标按钮
          IconButton(
            onPressed: () {
              print('IconButton');
            },
            icon: const Icon(Icons.add_alarm),
            color: Colors.red,
            // 按下颜色
            splashColor: Colors.blue,
            // 高亮颜色 会和水波纹冲突
            highlightColor: Colors.pink,
            // 长按提示
            tooltip: "tooltips",
          ),

          // 命名图标按钮
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.plumbing_sharp),
            label: const Text('添加'),
          ),
          // 命名图标按钮
          OutlinedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.plumbing_sharp),
            label: const Text('添加'),
          ),
          // 命名图标按钮
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.plumbing_sharp),
            label: const Text('添加'),
          ),

          // 按钮组 当并排放不下时会自动纵排
          Container(
            width: double.infinity,
            color: Colors.pink[100],
            child: ButtonBar(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('button'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              ],
            ),
          ),

          // 其他按钮
          const BackButton(
            color: Colors.red,
          ),
          const CloseButton(),
        ],
      ),
    );
  }
}
