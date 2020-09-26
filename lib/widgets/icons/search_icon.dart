import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umma_pay/resources/colors.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/search_icon.svg',
      color: CustomColors.secondaryColor,
    );
  }
}
