import 'package:flutter/cupertino.dart';
import 'package:umma_pay/resources/colors.dart';

class PrayerTitle extends StatelessWidget {
  const PrayerTitle({
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
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Open Sans',
          fontWeight: FontWeight.w600,
          color: CustomColors.title,
          fontSize: 17,
          height: 23.15 / 17,
        ),
      ),
    );
  }
}
