import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:umma_pay/models/routine.dart';
import 'package:umma_pay/resources/colors.dart';
import 'package:umma_pay/routes/daily_routines/daily_routines.dart';
import 'package:umma_pay/routes/routine_details/routine_details.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: CustomColors.accentColor,
        scaffoldBackgroundColor: CustomColors.bgColor,
        barBackgroundColor: CustomColors.bgColor,
        primaryContrastingColor: CustomColors.accentColor,
      ),
      initialRoute: DailyRoutinesScreen.routeName,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case RoutineDetails.routeName:
            return CupertinoPageRoute(
              builder: (context) {
                final routine =
                    ModalRoute.of(context).settings.arguments as Routine;
                return RoutineDetails(routine: routine);
              },
              title: RoutineDetails.routeTitle,
              settings: settings,
            );
          case DailyRoutinesScreen.routeName:
          default:
            return CupertinoPageRoute(
              builder: (context) => DailyRoutinesScreen(),
              title: DailyRoutinesScreen.routeTitle,
              settings: settings,
            );
        }
      },
    );
  }
}
