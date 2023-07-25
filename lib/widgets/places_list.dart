import 'package:favorite_places/screens/place_detail.dart';
import 'package:flutter/material.dart';
import '../models/place.dart';

class PlacesList extends StatelessWidget {
  final List<Place> places;
  const PlacesList({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) {
        return ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => PlaceDetailScreen(
                  place: places[index],
                ),
              ),
            );
          },
          title: Text(
            places[index].title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        );
      },
    );
  }
}
