import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoCheckboxUpdate extends StatefulWidget {
  const CupertinoCheckboxUpdate({super.key});

  @override
  State<CupertinoCheckboxUpdate> createState() =>
      _CupertinoCheckboxUpdateState();
}

class _CupertinoCheckboxUpdateState extends State<CupertinoCheckboxUpdate> {
  bool isSelected = false;

  updateValue(value) {
    setState(() {
      isSelected = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CupertinoCheckbox(
          value: isSelected,
          onChanged: (value) => updateValue(value),
          mouseCursor: SystemMouseCursors.grabbing, // New
          semanticLabel: 'Cupertino Checkbox', // New
          fillColor: WidgetStatePropertyAll(Colors.grey), // New
          inactiveColor: Colors.white, // Deprecated
        ),
        Text('Cupertino Checkbox')
      ],
    );
  }
}
