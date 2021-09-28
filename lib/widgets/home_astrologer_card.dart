import 'package:flutter/material.dart';

class HomeAstrologerCard extends StatelessWidget {
  final String name;
  final String imageName;
  final double rating;
  final String profession;
  final double fee;

  HomeAstrologerCard({
    required this.imageName,
    required this.name,
    required this.rating,
    required this.profession,
    required this.fee,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageName,
              height: 130,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  child: Text(
                    name,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: Text("")),
                Text(rating.toString()),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(profession),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${fee.toStringAsFixed(0)} / min"),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Talk Now"),
                  style: ButtonStyle(visualDensity: VisualDensity.compact),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
