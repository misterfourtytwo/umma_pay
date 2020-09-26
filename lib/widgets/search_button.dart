import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:umma_pay/widgets/icons/search_icon.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SearchIcon(),
      onTap: () {
        print('pressed search');
      },
    );
  }
}
