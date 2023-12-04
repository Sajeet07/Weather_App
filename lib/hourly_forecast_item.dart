import "package:flutter/material.dart";

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final IconData iconday;
  final String value;
  const HourlyForecastItem(
      {super.key,
      required this.time,
      required this.iconday,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Icon(
              iconday,
              size: 32,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              value,
            ),
          ],
        ),
      ),
    );
  }
}