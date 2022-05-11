import 'package:flutter/material.dart';

// import '01_home/01_hello.dart';
// import '01_home/02_Text.dart';
// import '02_layout/container.dart';
// import '02_layout/column_row.dart';
// import '02_layout/flex.dart';
// import '02_layout/Wrap.dart';
// import '02_layout/Stack.dart';
// import '02_layout/Card.dart';
import '03_button/02_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
    );
  }
}
