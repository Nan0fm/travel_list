import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';
import 'package:travel_list/screens/components/icon_place.dart';
import 'package:travel_list/screens/destination_details/destination_screen.dart';

class MainPlaceCard extends StatelessWidget {
  const MainPlaceCard({
    Key key,
    @required this.place,
  }) : super(key: key);

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    double cardHeight = 220;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DestinationScreen(),
            ));
      },
      child: Stack(children: [
        Container(
          height: cardHeight,
          margin: EdgeInsets.symmetric(horizontal: kDPadding * 1.5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Hero(
              tag: "tag_hero_${place.placeName}",
              child: Image.network(
                place.imageUrl,
                height: cardHeight,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          height: cardHeight,
          margin: EdgeInsets.symmetric(horizontal: kDPadding * 1.5),
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  bottom: kDPadding / 2,
                  child: Hero(
                    tag: "tag_panel",
                    child: FlatButton(
                      padding: EdgeInsets.all(0),
                      shape: CircleBorder(),
                      onPressed: () {},
                      child: Icon(
                        Icons.star_border,
                        color: Colors.black26,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: kDPadding,
                  top: kDPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.placeName,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                      IconPlace(
                        place: place.country,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
