import 'package:flutter/material.dart';
import './location_list.dart';
import './client/location.dart';

void main() {
  final locations = LocationClient.fetchAll();

  return runApp(MaterialApp(
    home: LocationList(locations),
  ));
}
