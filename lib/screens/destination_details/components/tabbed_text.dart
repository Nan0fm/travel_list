import 'package:flutter/material.dart';

import '../../../constants.dart';

class TabbedText extends StatelessWidget {
  const TabbedText({
    Key key,
    @required this.text,
    this.isActive = false,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: Material(
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Material(
                color: Colors.transparent,
                child: Text(
                  text,
                  style: TextStyle(
                      color: isActive ? kPrimaryColor : Colors.black38,
                      fontWeight:
                          isActive ? FontWeight.bold : FontWeight.normal),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 2,
                decoration: BoxDecoration(
                    color: isActive ? kPrimaryColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(4)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
