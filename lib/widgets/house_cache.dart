import 'dart:collection';

import 'package:avaliacaoflutter/widgets/house.dart';

class HouseCache {
  var _index = -1;

  final List<House> _houses = [
    const House(
      'lib/assets/img1.png',
      'Home Decor Ideas',
    ),
    const House(
      'lib/assets/img2.png',
      'Interior Inspiration',
    ),
    const House(
      'lib/assets/img3.png',
      'Modern Sofa Ideas',
    ),
    const House(
      'lib/assets/img4.png',
      'Modern Sofa Ideas',
    ),
    const House(
      'lib/assets/img5.png',
      'Living Room Inspiration',
    ),
    const House(
      'lib/assets/img6.png',
      'Interior Inspiration',
    ),
    const House(
      'lib/assets/img7.png',
      '',
    ),
    const House(
      'lib/assets/img8.png',
      '',
    ),
  ];

  void addItem(
    String image,
    String description,
  ) {
    _houses.add(House(
      image,
      description,
    ));
  }

  int get index => _index;

  set index(int value) {
    if ((value >= 0) && (value < _houses.length)) {
      _index = value;
    } else {
      _index = -1;
    }
  }

  UnmodifiableListView<House> get list => UnmodifiableListView<House>(_houses);
}
