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
      body: const GridViewMaxWidthDemo(),
    );
  }
}

// 定列
class GridViewBuilderDemo extends StatelessWidget {
  const GridViewBuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(20, (index) => Image.asset('images/face.png')),
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
    );
  }
}

// 定宽
class GridViewMaxWidthDemo extends StatelessWidget {
  const GridViewMaxWidthDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GridView.extent(
        maxCrossAxisExtent: 100,
        children: List.generate(20, (index) => Image.asset('images/face.png')),
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
      ),
    );
  }
}
