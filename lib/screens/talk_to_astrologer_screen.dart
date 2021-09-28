import 'package:astro/models/astrologer.dart';
import 'package:astro/providers/astrologers.dart';
import 'package:astro/widgets/list_tile_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TalkToAstrologerScreen extends StatelessWidget {
  const TalkToAstrologerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Astrologer> _astro =
        Provider.of<Astrologers>(context, listen: false).astro;
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  "Talk to an Astorloger",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(""),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.category,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  color: Theme.of(context).primaryColor,
                  icon: Icon(
                    Icons.swap_vert,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ..._astro.map((e) {
                  String _lang = '';
                  e.languages.forEach((L) {
                    _lang += L;
                    if (L != e.languages[e.languages.length - 1]) {
                      _lang += ', ';
                    }
                  });
                  String _skills = '';
                  e.skills.forEach((S) {
                    _skills += S;
                    if (S != e.skills[e.skills.length - 1]) {
                      _skills += ', ';
                    }
                  });
                  return ListTileItem(
                    "${e.firstName} ${e.lastName}",
                    _lang,
                    e.additionalPerMinuteCharges,
                    e.imageName,
                    _skills,
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
