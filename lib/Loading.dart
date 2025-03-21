import 'package:flutter/material.dart';
import 'Time.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading.......';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    showTime();
  }

  void showTime() async {
    final routeData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    Time data2 = Time(
        continent: '${routeData['continent']}', city: '${routeData['city']}');
    await data2.getTime();

    if (mounted) {
      Navigator.pushReplacementNamed(context, '/Home', arguments: {
        'dateTime': data2.dateTime,
        'city': routeData['city'],
        'isDayTime': data2.isDayTime
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.newtonCradle(
          color: Colors.blue,
          size: 200,
        ),
      ),
    );
  }
}
