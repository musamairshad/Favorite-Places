import 'package:flutter/material.dart';
import '../models/place.dart';

class PlacesDetailScreen extends StatelessWidget {
  final Place place;
  const PlacesDetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.title),
      ),
      body: Center(
        child: Text(
          place.title,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
