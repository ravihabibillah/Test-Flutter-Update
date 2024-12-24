import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoRadioUpdate extends StatefulWidget {
  const CupertinoRadioUpdate({super.key});

  @override
  State<CupertinoRadioUpdate> createState() => _CupertinoRadioUpdateState();
}

class _CupertinoRadioUpdateState extends State<CupertinoRadioUpdate> {
  var isSelected = -1;

  updateValue(value) {
    setState(() {
      isSelected = value!;
    });
  }

  _buildCheckbox({
    required int value,
    required String text,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 6,
      children: [
        CupertinoRadio(
          value: value,
          groupValue: isSelected,
          onChanged: (value) => updateValue(value),
          mouseCursor: SystemMouseCursors.click, // New
          fillColor: Colors.blueAccent, // New
        ),
        Text(text),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        _buildCheckbox(
          value: 1,
          text: 'Cupertino Checkbox 1',
        ),
        _buildCheckbox(
          value: 2,
          text: 'Cupertino Checkbox 2',
        ),
        _buildCheckbox(
          value: 3,
          text: 'Cupertino Checkbox 3',
        ),
      ],
    );
  }
}
