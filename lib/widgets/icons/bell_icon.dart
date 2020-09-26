import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umma_pay/resources/colors.dart';

class BellIcon extends StatelessWidget {
  const BellIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SvgPicture.asset(
        'assets/icons/bell_icon.svg',
        color: CustomColors.accentColor,
      ),
    );
  }
}
