import 'package:astro/models/dummy_text.dart';
import 'package:astro/widgets/home_headder.dart';
import 'package:astro/widgets/report_card.dart';
import 'package:flutter/material.dart';

class HomeReports extends StatelessWidget {
  const HomeReports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        child: Column(
          children: [
            HomeHeadder(
              heading: "Reports",
              description: "${DummyText.dummyText.substring(0, 200)}.",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReportCard(
                    999,
                    'assets/images/user-image.png',
                  ),
                  ReportCard(
                    999,
                    'assets/images/user-image.png',
                  ),
                  ReportCard(
                    999,
                    'assets/images/user-image.png',
                  ),
                  ReportCard(
                    999,
                    'assets/images/user-image.png',
                  ),
                  ReportCard(
                    999,
                    'assets/images/user-image.png',
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
