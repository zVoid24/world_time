import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  Color color = Colors.black;
  Color color2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    if (data['isDayTime']) {
      color = Colors.white;
      color2 = Colors.black;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Time',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: color),
        ),
        centerTitle: true,
        leading: BackButton(
          color: color,
        ),
        backgroundColor: color2,
      ),
      backgroundColor: color,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${data['city']}',
                  style: TextStyle(fontSize: 40, color: color2)),
              SizedBox(
                height: 20,
              ),
              Text(
                '${data['dateTime']}',
                style: TextStyle(fontSize: 50, color: color2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
