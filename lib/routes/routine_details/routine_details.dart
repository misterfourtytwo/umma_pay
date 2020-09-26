import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:umma_pay/models/routine.dart';
import 'package:umma_pay/resources/colors.dart';
import 'package:umma_pay/routes/routine_details/widgets/prayer_card.dart';
import 'package:umma_pay/stub.dart';
import 'package:umma_pay/widgets/custom_scaffold.dart';

class RoutineDetails extends StatelessWidget {
  static const routeName = 'routine_details';
  static const routeTitle = 'Азкары';

  final Routine routine;
  const RoutineDetails({this.routine, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: routeTitle,
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: CustomColors.dividerColor,
        ),
        itemCount: stub.length,
        itemBuilder: (context, index) => PrayerCard(
          prayer: routine.prayers[index],
        ),
      ),
    );
  }
}
