import 'package:astro/models/dummy_text.dart';
import 'package:flutter/material.dart';

import '../home_headder.dart';
import '../home_horoscopes.dart';

class AllDailyHoroscopes extends StatelessWidget {
  const AllDailyHoroscopes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          HomeHeadder(
            heading: "Daily Hororscopes",
            description: '${DummyText.dummyText.substring(0, 109)}.',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeHoroscope(
                "Aries",
                Icons.ac_unit,
              ),
              HomeHoroscope(
                "Aries",
                Icons.ac_unit,
              ),
              HomeHoroscope(
                "Aries",
                Icons.ac_unit,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
