import 'package:astro/models/dummy_text.dart';
import 'package:astro/widgets/ask_question_card.dart';
import 'package:astro/widgets/home_headder.dart';
import 'package:flutter/material.dart';

class HomeAskQuestion extends StatelessWidget {
  const HomeAskQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Column(
        children: [
          HomeHeadder(
            heading: "Ask a Question",
            description: "${DummyText.dummyText.substring(0, 200)}.",
          ),
          AskQuestionCard(),
        ],
      ),
    );
  }
}
