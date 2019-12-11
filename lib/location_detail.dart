import 'package:flutter/material.dart';
import './models/location_fact.dart';
import './models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _renderFacts(location.facts),
      ),
    );
  }

  List<Widget> _renderFacts(List<LocationFact> facts) {
    var result = List<Widget>();
    for (int i = 0; i < facts.length; i++) {
      result.add(_sectionTitle(facts[i].title));
      result.add(_sectionText(facts[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}
