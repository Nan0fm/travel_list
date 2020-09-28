import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      width: size.width * 0.8,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: Colors.white,
        ),
        color: Colors.white.withOpacity(0.85),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 12),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.12),
            spreadRadius: 4,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.search),
          Expanded(
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search your destination...",
                hintStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                suffixIcon: Icon(
                  Icons.mic,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: (kDefaultPadding),
                  vertical: (kDefaultPadding / 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
