import '../models/location.dart';
import '../models/location_fact.dart';

class LocationClient {
  static Location fetchOne() {
    return Location(
      name: 'Arashiyama Bamboo Grove, Kyoto, Japan',
      url:
          'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
      facts: <LocationFact>[
        LocationFact(
          title: 'Summary',
          text:
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extends beyond the visual realm',
        ),
        LocationFact(
          title: 'How to Get There',
          text:
              'Kyoto airport, with several termianls, is located 16 kilometers south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.',
        )
      ],
    );
  }
}
