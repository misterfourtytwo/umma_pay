import 'package:flutter/material.dart';
import 'package:umma_pay/resources/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: CustomColors.dividerColor,
    );
  }
}
