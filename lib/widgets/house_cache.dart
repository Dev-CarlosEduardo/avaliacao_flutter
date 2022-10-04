import 'dart:collection';

import 'package:avaliacaoflutter/widgets/house.dart';

class HouseCache {
  var _index = -1;

  final List<House> _houses = [
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
    ),
    const House(
      'lib/assets/img1.png',
      'Descrição',
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
