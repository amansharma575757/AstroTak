import 'package:astro/models/dummy_text.dart';
import 'package:astro/widgets/comment_card.dart';
import 'package:flutter/material.dart';

class HomeComments extends StatelessWidget {
  const HomeComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Hear from our Happy Customers!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CommentCard(
                  "Gagan Deep Agarwal",
                  "Ghaziabad, India",
                  "${DummyText.dummyText.substring(0, 150)}.",
                ),
                CommentCard(
                  "Gagan Deep Agarwal",
                  "Ghaziabad, India",
                  "${DummyText.dummyText.substring(0, 150)}.",
                ),
                CommentCard(
                  "Gagan Deep Agarwal",
                  "Ghaziabad, India",
                  "${DummyText.dummyText.substring(0, 150)}.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
