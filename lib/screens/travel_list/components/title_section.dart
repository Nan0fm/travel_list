import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key key,
    this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          Spacer(),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.refresh,
              color: Colors.grey.withOpacity(0.75),
            ),
          ),
        ],
      ),
    );
  }
}
