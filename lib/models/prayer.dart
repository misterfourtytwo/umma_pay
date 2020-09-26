import 'package:flutter/foundation.dart';

class Prayer {
  final String title;
  final String russian;
  final String glyphs;
  final String transliteration;

  const Prayer({
    @required this.title,
    this.russian,
    this.glyphs,
    this.transliteration,
  });
}
