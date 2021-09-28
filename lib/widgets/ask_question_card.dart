import 'package:flutter/material.dart';

class AskQuestionCard extends StatelessWidget {
  const AskQuestionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[100],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Category",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Select a Category :",
              ),
              value: 1,
              onChanged: (int) {},
              items: [
                DropdownMenuItem(
                  value: 1,
                  child: Text("Love"),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text("Carrer"),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                '₹99',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                " (Including GST) ",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                ),
              ),
              Expanded(
                child: Text(" "),
              ),
              Text(
                "ideas what to ask",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ask a Question",
                ),
                style: ButtonStyle(
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
