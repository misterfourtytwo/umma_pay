import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umma_pay/resources/colors.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/arrow.svg',
      color: CustomColors.accentColor,
    );
  }
}
