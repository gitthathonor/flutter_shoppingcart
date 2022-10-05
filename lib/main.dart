import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 실행 클래스
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// 첫 페이지
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("홈페이지 실행됨");
    return Scaffold(
      body: Column(
        children: [
          DayComponent(),
          Container(
            color: Colors.blue,
            height: 400,
            child: Text("밤"),
          )
        ],
      ),
    );
  }
}

class DayComponent extends StatefulWidget {
  const DayComponent({Key? key}) : super(key: key);

  @override
  State<DayComponent> createState() => _DayComponentState();
}

class _DayComponentState extends State<DayComponent> {
  String upData = "낮";

  @override
  Widget build(BuildContext context) {
    print("실행됨");
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                upData = "해";
              });
              print(upData);
            },
            child: Text("클릭")),
        Container(color: Colors.yellow, height: 400, child: Text("${upData}")),
      ],
    );
  }
}
