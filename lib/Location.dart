import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<Map<String, String>> zones = [
    {'continent': 'Asia', 'city': 'Dhaka'},
    {'continent': 'Europe', 'city': 'Amsterdam'},
    {'continent': 'Asia', 'city': 'Tokyo'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Choose Location",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ListView.builder(
              itemCount: zones.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/Loading', arguments: {
                        'continent': '${zones[index]['continent']}',
                        'city': '${zones[index]['city']}',
                      });
                    },
                    title: Text(
                      '${zones[index]['city']}',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
