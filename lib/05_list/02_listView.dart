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
      body: const ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ListBasic(),
          const ListViewHorizontal(),
          ListViewBuildDemo(),
          SeparatorViewDemo(),
        ],
      ),
    );
  }
}

// 垂直方向滚动
class ListBasic extends StatelessWidget {
  const ListBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          ListTile(
            leading: Icon(
              Icons.access_alarm,
              size: 50,
            ),
            title: Text('access_alarm'),
            subtitle: Text('问描述'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.ad_units_outlined,
              size: 50,
            ),
            title: Text('access_alarm'),
            subtitle: Text('问描述'),
            trailing: Icon(Icons.keyboard_arrow_right),
            selected: true,
            selectedColor: Colors.red,
            selectedTileColor: Colors.yellow,
          ),
          ListTile(
            leading: Icon(
              Icons.sd_card_alert_rounded,
              size: 50,
            ),
            title: Text('access_alarm'),
            subtitle: Text('问描述'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: Icon(
              Icons.border_bottom_rounded,
              size: 50,
            ),
            title: Text('access_alarm'),
            subtitle: Text('问描述'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}

// 水平滚动
class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 40),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.green,
            width: 160,
          ),
          Container(
            color: Colors.blue.shade300,
            width: 160,
          ),
          Container(
            color: Colors.deepPurpleAccent.shade400,
            width: 160,
          ),
          Container(
            color: Colors.blueGrey,
            width: 160,
          ),
          Container(
            color: Colors.pink.shade400,
            width: 160,
          ),
        ],
      ),
    );
  }
}

// 构造器方式
class ListViewBuildDemo extends StatelessWidget {
  ListViewBuildDemo({Key? key}) : super(key: key);

  final List<Widget> users = List.generate(
    20,
    (index) => OutlinedButton(
      onPressed: () {},
      child: Text('姓名：$index'),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        margin: const EdgeInsets.only(top: 0),
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: users.length,
          itemExtent: 30,
          itemBuilder: (context, index) {
            return users[index];
          },
        ));
  }
}

// 分隔列表
class SeparatorViewDemo extends StatelessWidget {
  SeparatorViewDemo({Key? key}) : super(key: key);

  final List<Widget> product = List.generate(
    100,
    (index) => ListTile(
      leading: const Icon(
        Icons.production_quantity_limits,
        size: 40,
      ),
      title: Text('商品序号: $index'),
      subtitle: const Text('问描述'),
      trailing: const Icon(Icons.keyboard_arrow_right),
    ),
  );

  Widget dividerOdd = const Divider(
    color: Colors.red,
    thickness: 2,
  );

  Widget dividerEven = const Divider(
    color: Colors.blue,
    thickness: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('商品列表'),
        ),
        SizedBox(
          height: 160,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return product[index];
            },
            // 分隔器构造器
            separatorBuilder: (context, index) {
              return index % 2 == 0 ? dividerOdd : dividerEven;
            },
            itemCount: product.length,
          ),
        ),
      ],
    );
  }
}
