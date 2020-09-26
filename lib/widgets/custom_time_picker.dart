import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:umma_pay/resources/colors.dart';

class CustomTimePicker extends StatefulWidget {
  final List<TimeOfDay> times;
  final TimeOfDay initialTime;
  CustomTimePicker({
    Key key,
    @required this.times,
    this.initialTime,
  })  : assert(times != null && times.isNotEmpty),
        super(key: key);

  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  TimeOfDay pickedTime;
  @override
  void initState() {
    super.initState();
    pickedTime = widget.times.contains(widget.initialTime)
        ? widget.initialTime
        : widget.times.first;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: widget.times
            .map<Widget>((TimeOfDay time) => TimeChip(
                  time: time,
                  isPicked: time == pickedTime,
                  onPicked: () {
                    setState(() {
                      pickedTime = time;
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}

class TimeChip extends StatelessWidget {
  final TimeOfDay time;
  final bool isPicked;
  final VoidCallback onPicked;

  const TimeChip({
    Key key,
    @required this.time,
    this.isPicked = false,
    this.onPicked,
  })  : assert(time != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 16.0,
      ),
      child: SizedBox(
        height: 20,
        width: 43,
        child: GestureDetector(
          onTap: onPicked,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: isPicked
                    ? Border.all(
                        color: CustomColors.accentColor,
                        width: 2,
                      )
                    : null),
            child: Text(
              '${time.hour < 10 ? '0' : ''}${time.hour}:${time.minute}',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontWeight: isPicked ? FontWeight.w600 : FontWeight.w400,
                color: isPicked
                    ? CustomColors.accentColor
                    : CustomColors.secondaryColor,
                fontSize: 12,
                height: 16.34 / 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
