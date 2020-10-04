import 'package:flutter/material.dart';
import 'package:travel_list/models/PlaceModel.dart';

class InfoView extends StatelessWidget {
  const InfoView({
    Key key,
    @required this.place,
  }) : super(key: key);

  final PlaceModel place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          place.placeName,
          style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 18),
        ),
        SizedBox(height: 8),
        Text(
          place.description,
          style: TextStyle(color: Colors.black38),
        ),
      ],
    );
  }
}
