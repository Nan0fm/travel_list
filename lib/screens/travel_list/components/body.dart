import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';
import 'package:travel_list/screens/travel_list/components/main_place_card.dart';
import 'package:travel_list/screens/travel_list/components/search_field.dart';

import 'image_header.dart';
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
          SizedBox(height: kDefaultPadding),
          MainPlaceCard(place: travelPlaces[2]),
          SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...List.generate(
                  travelPlaces.length,
                  (index) => LittlePlaceCard(place: travelPlaces[index]),
                ),
                SizedBox(width: 20)
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}

class LittlePlaceCard extends StatelessWidget {
  const LittlePlaceCard({
    Key key,
    @required this.place,
  }) : super(key: key);
  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(place.imageUrl),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              place.placeName,
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              place.description,
              style: TextStyle(color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
