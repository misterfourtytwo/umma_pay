import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:umma_pay/resources/colors.dart';
import 'package:umma_pay/widgets/appbar_bottom.dart';
import 'package:umma_pay/widgets/search_button.dart';

class CustomAppBar extends StatelessWidget
    implements ObstructingPreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }

  @override
  Size get preferredSize => Size.fromHeight(44 + 53.0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: DecoratedBox(
        decoration: BoxDecoration(color: CustomColors.bgColor),
        child: Column(
          children: [
            CupertinoNavigationBar(
              border: Border(
                  bottom: BorderSide(
                color: CustomColors.dividerColor,
              )),
              padding: EdgeInsetsDirectional.only(start: 16, end: 16),
              middle: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w700,
                  color: CustomColors.title,
                  fontSize: 17,
                  height: 23.15 / 17,
                ),
              ),
              trailing: SearchButton(),
            ),
            // CustomDivider(),
            AppBarBottom(),
          ],
        ),
      ),
    );
  }
}

// class _Bar extends StatelessWidget {
//   const _Bar({
//     Key key,
//     this.title,
//   }) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: 56,
//         child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
//           GestureDetector(
//               onTap: () {
//                 print('pop');
//                 if (Navigator.of(context).canPop()) Navigator.of(context).pop();
//               },
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: SizedBox(
//                   width: 12,
//                   height: 20,
//                   child: Navigator.of(context).canPop()
//                       ? Icon(CupertinoIcons.back)
//                       : null,
//                 ),
//               )),
//           Expanded(
//               child: Text(
//             title,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontFamily: 'Open Sans',
//               fontWeight: FontWeight.w700,
//               color: CustomColors.title,
//               fontSize: 17,
//               height: 23.15 / 17,
//             ),
//           )),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: SearchButton(),
//           ),
//         ]));
//   }
// }
