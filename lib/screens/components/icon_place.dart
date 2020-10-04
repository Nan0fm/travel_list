import 'package:flutter/material.dart';

class IconPlace extends StatelessWidget {
  const IconPlace({
    Key key,
    this.place,
  }) : super(key: key);
  final String place;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.place,
          size: 16,
          color: Colors.white.withOpacity(0.76),
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          place,
          style: TextStyle(color: Colors.white.withOpacity(0.76)),
        )
      ],
    );
  }
}
