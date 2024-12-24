import 'package:flutter/cupertino.dart';

class CupertinoSlidingSegmentedControlerUpdate extends StatefulWidget {
  const CupertinoSlidingSegmentedControlerUpdate({super.key});

  @override
  State<CupertinoSlidingSegmentedControlerUpdate> createState() =>
      _CupertinoSlidingSegmentedControlerUpdateState();
}

class _CupertinoSlidingSegmentedControlerUpdateState
    extends State<CupertinoSlidingSegmentedControlerUpdate> {
  void _updateValue(value) {
    setState(() {
      selectedValue = value;
    });
  }

  var selectedValue = "1";
  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl(
      groupValue: selectedValue,
      children: {
        "1": Text("First"),
        "2": Text("Second"),
        "3": Text("Third"),
      },
      disabledChildren: {"3"}, // New
      onValueChanged: (value) => _updateValue(value),
    );
  }
}
