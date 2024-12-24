import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerUpdate extends StatefulWidget {
  const CupertinoPickerUpdate({
    super.key,
  });

  @override
  State<CupertinoPickerUpdate> createState() => _CupertinoPickerUpdateState();
}

class _CupertinoPickerUpdateState extends State<CupertinoPickerUpdate> {
  var selectedOption = 0;
  var controller = FixedExtentScrollController();

  @override
  void initState() {
    controller = FixedExtentScrollController(initialItem: selectedOption);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6,
      children: [
        Text('Selected Option:'),
        CupertinoButton(
          onPressed: () => _buildModal(context),
          child: Text('$selectedOption'),
        )
      ],
    );
  }

  _buildModal(BuildContext context) async {
    return showCupertinoModalPopup(
      context: context,
      builder: (context) => Container(
        color: Colors.white,
        height: 200,
        child: CupertinoPicker.builder(
          scrollController: controller,
          itemExtent: 25,
          onSelectedItemChanged: (index) {
            setState(() {
              selectedOption = index;
            });
          },
          childCount: 3,
          itemBuilder: (context, index) => Text('Option $index'),
        ),
      ),
    );
  }
}
