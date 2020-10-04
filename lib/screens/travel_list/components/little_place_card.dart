import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';
import 'package:travel_list/screens/components/info_view.dart';

class SuggestedPlaces extends StatelessWidget {
  const SuggestedPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      padding: EdgeInsets.symmetric(horizontal: kDPadding * 1.5),
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
            InfoView(place: place),
          ],
        ),
      ),
    );
  }
}
