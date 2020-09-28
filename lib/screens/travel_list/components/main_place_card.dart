import 'package:flutter/material.dart';
import 'package:travel_list/constants.dart';
import 'package:travel_list/models/PlaceModel.dart';

class MainPlaceCard extends StatelessWidget {
  const MainPlaceCard({
    Key key,
    @required this.place,
  }) : super(key: key);

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(place.imageUrl),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              bottom: kDefaultPadding / 2,
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
            Positioned(
              left: kDefaultPadding,
              top: kDefaultPadding,
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
                  Row(
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
                        place.country,
                        style: TextStyle(color: Colors.white.withOpacity(0.76)),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
