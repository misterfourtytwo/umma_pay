import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umma_pay/resources/colors.dart';
import 'package:umma_pay/routes/daily_routines/widgets/routine_card.dart';
import 'package:umma_pay/stub.dart';
import 'package:umma_pay/widgets/custom_scaffold.dart';

class DailyRoutinesScreen extends StatelessWidget {
  static const String routeName = 'daily_routines';
  static const String routeTitle = 'Азкары';
  const DailyRoutinesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: routeTitle,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: CustomColors.dividerColor,
        ),
        itemCount: stub.length,
        itemBuilder: (context, index) => RoutineCard(routine: stub[index]),
      ),
    );
  }
}
