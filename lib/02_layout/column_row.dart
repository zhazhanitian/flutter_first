import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Rows'),
        elevation: 0.0,
        actions: const [Icon(Icons.safety_divider)],
        centerTitle: true,
      ),
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Icon(Icons.ac_unit_rounded, size: 50),
          const Icon(Icons.search, size: 50),
          const Icon(Icons.dangerous, size: 50),
          const Icon(Icons.ac_unit_outlined, size: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.ac_unit_rounded, size: 50),
              Icon(Icons.search, size: 50),
              Icon(Icons.dangerous, size: 50),
              Icon(Icons.ac_unit_outlined, size: 50),
            ],
          ),
        ],
      ),
    );
  }
}
