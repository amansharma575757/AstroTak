import 'package:astro/models/astrologer.dart';
import 'package:astro/models/dummy_text.dart';
import 'package:astro/providers/astrologers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home_headder.dart';
import '../home_astrologer_card.dart';

class HomeAstrologers extends StatelessWidget {
  const HomeAstrologers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Astrologer> _astro =
        Provider.of<Astrologers>(context, listen: false).astro;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          HomeHeadder(
            heading: "Talk to an Astrologer",
            description: "${DummyText.dummyText.substring(0, 200)}.",
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ..._astro.map((e) {
                  return HomeAstrologerCard(
                    name: "${e.firstName} ${e.lastName}",
                    imageName: e.imageName,
                    rating: e.ratings,
                    profession: e.skills[0],
                    fee: e.additionalPerMinuteCharges,
                  );
                }).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
