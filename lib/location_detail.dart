import 'package:flutter/material.dart';
import './styles.dart';
import './models/location_fact.dart';
import './models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          location.name,
          style: Styles.navBarTitle,
        ),
      ),
      body: _renderBody(context, location),
    );
  }

  Widget _renderBody(BuildContext context, Location location) {
    var widgets = List<Widget>();
    widgets.add(_bannerImage(location.url, 170.0));
    widgets.addAll(_renderFacts(location.facts));
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: widgets,
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
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: Styles.headerLarge,
      ),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Styles.textDefault,
      ),
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}
