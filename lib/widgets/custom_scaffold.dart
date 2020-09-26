import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:umma_pay/widgets/custom_appbar.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final String title;
  const CustomScaffold({Key key, this.child, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoPageScaffold(
      navigationBar: CustomAppBar(
        title: title,
      ),
      child: child,
    ));
  }
}
