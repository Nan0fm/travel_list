import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  final String title, image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          height: 240,
        ),
        Positioned(
          bottom: 100,
          left: size.width * 0.1,
          child: RichText(
            text: TextSpan(
                text: "$title\n",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
                children: [
                  TextSpan(
                    text: "Travel list",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black87),
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
