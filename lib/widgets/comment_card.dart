import 'package:flutter/material.dart';

class CommentCard extends StatelessWidget {
  final String name;
  final String place;
  final String messege;
  CommentCard(
    this.name,
    this.place,
    this.messege,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            height: 80,
            width: 180,
            margin: EdgeInsets.all(10),
            child: Text(
              messege,
              softWrap: true,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 65,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromRGBO(0, 0, 0, .2),
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person),
                    radius: 25,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    place,
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
