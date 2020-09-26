import 'package:flutter/cupertino.dart';

import 'package:umma_pay/models/prayer.dart';
import 'package:umma_pay/routes/routine_details/widgets/prayer_glyphs.dart';
import 'package:umma_pay/routes/routine_details/widgets/prayer_russian.dart';
import 'package:umma_pay/routes/routine_details/widgets/prayer_title.dart';
import 'package:umma_pay/routes/routine_details/widgets/prayer_transliteration.dart';
import 'package:umma_pay/widgets/custom_divider.dart';

class PrayerCard extends StatelessWidget {
  final Prayer prayer;
  const PrayerCard({
    Key key,
    this.prayer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        PrayerTitle(text: prayer.title),
        const CustomDivider(),
        PrayerGlyphs(text: prayer.glyphs),
        PrayerRussian(text: prayer.russian),
        PrayerTransliteration(text: prayer.transliteration),
      ],
    );
  }
}
