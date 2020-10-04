import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';

import 'image_header.dart';
import 'little_place_card.dart';
import 'main_place_card.dart';
import 'search_field.dart';
import 'title_section.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double defaultPadding = size.width * 0.1;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              ImageHeader(
                image: "assets/images/palm_leaf.png",
                title: "Selina",
              ),
              Positioned(
                width: size.width * 0.8,
                bottom: 0,
                left: size.width * 0.1,
                child: SearchField(size: size),
              )
            ],
          ),
          SizedBox(height: defaultPadding),
          TitleSection(title: "Best Places"),
          SizedBox(height: kDPadding),
          MainPlaceCard(place: travelPlaces[2]),
          SizedBox(height: kDPadding),
          SuggestedPlaces(),
          SizedBox(height: kDPadding),
        ],
      ),
    );
  }
}
