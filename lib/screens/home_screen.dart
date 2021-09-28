import 'package:astro/widgets/home_astrologer_card.dart';
import 'package:astro/widgets/home_headder.dart';
import 'package:astro/widgets/home_horoscopes.dart';
import 'package:astro/widgets/home_widgets/home_ask_ques.dart';
import 'package:astro/widgets/home_widgets/home_banner.dart';
import 'package:astro/widgets/home_widgets/all_daily_horoscopes.dart';
import 'package:astro/widgets/home_widgets/home_astrologers.dart';
import 'package:astro/widgets/home_widgets/home_comments.dart';
import 'package:astro/widgets/home_widgets/home_reports.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //top Banner
          HomeBanner(),
          //Other banners
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                        child: Image.asset(
                          "assets/images/user-image.png",
                          width: 140,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                        child: Image.asset(
                          "assets/images/user-image.png",
                          width: 140,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                        child: Image.asset(
                          "assets/images/user-image.png",
                          width: 140,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Horoscopes
          AllDailyHoroscopes(),
          //Talk to an Astrologer
          HomeAstrologers(),
          HomeReports(),
          HomeAskQuestion(),
          HomeComments(),
          Container(
            margin: EdgeInsets.all(15),
            child: Text(
              "Copyright 2020 All Rights Reserved",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
