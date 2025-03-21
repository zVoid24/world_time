import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Time {
  String continent;
  String city;
  late String dateTime;
  late bool isDayTime;
  Time({required this.continent, required this.city});

  Future<void> getTime() async {
    http.Response response = await http.get(Uri.parse(
        'https://timeapi.io/api/time/current/zone?timeZone=$continent%2F$city'));
    Map data = jsonDecode(response.body);
    DateTime now = DateTime.parse(data['dateTime']);
    dateTime = DateFormat.jm().format(now);
    isDayTime = now.hour > 6 ? true : false;
  }
}
