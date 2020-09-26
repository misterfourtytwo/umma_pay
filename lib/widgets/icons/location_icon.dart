import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umma_pay/resources/colors.dart';

class LocationIcon extends StatelessWidget {
  const LocationIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        'assets/icons/location_icon.svg',
        color: CustomColors.accentColor,
      ),
    );
  }
}
