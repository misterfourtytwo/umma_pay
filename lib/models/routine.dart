import 'package:flutter/foundation.dart';

import 'package:umma_pay/models/prayer.dart';

class Routine {
  final String name;
  final String image;
  final List<Prayer> prayers;

  const Routine({
    @required this.name,
    this.image,
    @required this.prayers,
  })  : assert(prayers != null),
        assert(name != null);
}
