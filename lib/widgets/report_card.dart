import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final double price;
  final String? imageName;
  ReportCard(this.price, this.imageName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Card(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imageName!,
                height: 150,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color.fromRGBO(0, 0, 0, .2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${price.toStringAsFixed(0)} /min",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Buy Now"),
                    style: ButtonStyle(
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
