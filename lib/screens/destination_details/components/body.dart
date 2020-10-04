import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';
import 'package:travel_list/screens/components/info_view.dart';

import 'header_with_tabs.dart';

class Body extends StatelessWidget {
  final PlaceModel place;

  const Body({Key key, @required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double defaultPadding = size.width * 0.1;
    double halfWidth = (size.width - kDPadding * 4) / 2;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            HeaderWithTabs(place: place),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDPadding * 1.5),
              child: InfoView(place: place),
            ),
            SizedBox(height: 24),
            Wrap(
              spacing: kDPadding, // gap between adjacent chips
              runSpacing: 12.0, // gap between lines
              children: List.generate(8, (index) {
                return Container(
                  padding: EdgeInsets.all(18),
                  width: halfWidth,
                  height: halfWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(place.imageUrl),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
