import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umma_pay/resources/colors.dart';
import 'package:umma_pay/stub.dart';
import 'package:umma_pay/widgets/icons/bell_icon.dart';
import 'package:umma_pay/widgets/custom_divider.dart';
import 'package:umma_pay/widgets/icons/location_icon.dart';

import 'custom_time_picker.dart';

class AppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarBottom({Key key}) : super(key: key);

  @override
  final Size preferredSize = const Size.fromHeight(53);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      SizedBox(
        height: 52,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  LocationIcon(),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    cityName,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w700,
                      color: CustomColors.accentColor,
                      fontSize: 15,
                      height: 20.43 / 15,
                    ),
                  ),
                ]),
              ),
              onTap: () {
                print('location picked');
              },
            ),
            Expanded(child: CustomTimePicker(times: times)),
            BellIcon(),
          ],
        ),
      ),
      CustomDivider(),
    ]);
  }
}
