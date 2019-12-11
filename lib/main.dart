import 'package:flutter/material.dart';
import './models/location.dart';
import './client/location.dart';
import './location_detail.dart';

void main() {
  final Location location = LocationClient.fetchOne();

  return runApp(MaterialApp(
    home: LocationDetail(location),
  ));
}
