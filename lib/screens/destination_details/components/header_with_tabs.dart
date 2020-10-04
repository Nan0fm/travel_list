import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';
import 'package:travel_list/screens/components/icon_place.dart';

import 'custom_tab_view.dart';

class HeaderWithTabs extends StatelessWidget {
  const HeaderWithTabs({
    Key key,
    @required this.place,
  }) : super(key: key);
  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double imageHeight = 320;
    double defaultPadding = size.width * 0.1;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDPadding),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Hero(
            tag: "tag_hero_${place.placeName}",
            child: Image.network(
              place.imageUrl,
              fit: BoxFit.cover,
              height: imageHeight,
              width: double.infinity,
            ),
          ),
          Positioned(
            left: defaultPadding,
            top: imageHeight / 2 - defaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.placeName,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w900),
                ),
                IconPlace(place: travelPlaces[2].country)
              ],
            ),
          ),
          Positioned(
            width: size.width,
            bottom: -kDPadding,
            child: Hero(
              tag: "tag_panel",
              child: CustomTabView(
                activeTab: 0,
                items: [
                  "Info",
                  "Offers",
                  "Reviews",
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
