import 'package:flutter/cupertino.dart';
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
        brightness: Brightness.light,
        primaryColor: CustomColors.accentColor,
        scaffoldBackgroundColor: CustomColors.bgColor,
        barBackgroundColor: CustomColors.bgColor,
        primaryContrastingColor: CustomColors.accentColor,
      ),
      initialRoute: DailyRoutinesScreen.routeName,
      routes: {
        DailyRoutinesScreen.routeName: (context) {
          return DailyRoutinesScreen();
        },
        RoutineDetails.routeName: (context) {
          final routine = ModalRoute.of(context).settings.arguments as Routine;
          return RoutineDetails(routine: routine);
        }
      },
      onUnknownRoute: (settings) {
        print(settings.name);
        return CupertinoPageRoute(
          builder: (context) => DailyRoutinesScreen(),
          title: DailyRoutinesScreen.routeTitle,
        );
      },
    );
  }
}
