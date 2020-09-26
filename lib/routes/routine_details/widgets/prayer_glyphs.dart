import 'package:flutter/cupertino.dart';
import 'package:umma_pay/resources/colors.dart';

class PrayerGlyphs extends StatelessWidget {
  const PrayerGlyphs({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        softWrap: true,
        textAlign: TextAlign.start,
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w400,
          color: CustomColors.text,
          fontSize: 15,
          height: 23 / 15,
        ),
      ),
    );
  }
}
