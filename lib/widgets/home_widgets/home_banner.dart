import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  '"There is no better boat than horoscope to help a man cross over the sea of life."',
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '-Varahamihira',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/images/user-image.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
