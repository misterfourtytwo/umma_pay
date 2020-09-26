import 'package:flutter/cupertino.dart';

import 'package:umma_pay/models/routine.dart';
import 'package:umma_pay/resources/colors.dart';
import 'package:umma_pay/resources/strings.dart';
import 'package:umma_pay/routes/routine_details/routine_details.dart';
import 'package:umma_pay/widgets/icons/arrow_icon.dart';

class RoutineCard extends StatelessWidget {
  final Routine routine;
  const RoutineCard({
    Key key,
    this.routine,
  })  : assert(routine != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(RoutineDetails.routeName, arguments: routine);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
              height: 160,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      routine.image,
                    ),
                    alignment: Alignment.topLeft,
                    fit: BoxFit.cover,
                  )),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            routine.name,
                            style: TextStyle(
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w600,
                              color: CustomColors.bgColor,
                              fontSize: 17,
                              height: 23.15 / 17,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(Strings.details,
                                  style: TextStyle(
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.normal,
                                    color: CustomColors.accentColor,
                                    fontSize: 12,
                                    height: 16.34 / 12,
                                  )),
                              SizedBox(
                                width: 2,
                              ),
                              ArrowIcon()
                            ],
                          ),
                          SizedBox(height: 16),
                        ]),
                  ))),
        ),
      ),
    );
  }
}
