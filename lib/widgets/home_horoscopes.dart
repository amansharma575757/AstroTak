import 'package:flutter/material.dart';

class HomeHoroscope extends StatelessWidget {
  final String name;
  final IconData icon;
  const HomeHoroscope(this.name, this.icon);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(icon),
              radius: 35,
              backgroundColor: Colors.blue[100],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
